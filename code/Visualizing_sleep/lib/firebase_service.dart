import 'device_ID.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:health/health.dart';
import 'package:intl/intl.dart';
import 'firebase_options.dart';

class FirebaseService {

  @pragma('vm:entry-point')
  Future<void> initializeFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }

  @pragma('vm:entry-point')
  uploadSleepData(List<HealthDataPoint> sleepData) async {
    final databaseReference = FirebaseDatabase.instance.ref();
    String deviceId = await getDeviceId();
    deviceId = deviceId.replaceAll(RegExp(r'[.\#$\[\]]'), '');

    sleepData.sort((a, b) => a.dateFrom.compareTo(b.dateFrom));

    List<String> sessionSort = [];
    List<int> indicesToRemove = [];

    for (int i = 0; i < sleepData.length; i++) {
      if (sleepData[i].type == HealthDataType.SLEEP_SESSION) {
        String formattedEndDate = DateFormat('yyyy-MM-dd').format(sleepData[i].dateTo);

        if (!sessionSort.contains(formattedEndDate)) {
          sessionSort.add(formattedEndDate);
        } else {
          indicesToRemove.add(i);
        }
      }
    }

// Remove the elements at the collected indices in reverse order
    for (int index in indicesToRemove.reversed) {
      sleepData.removeAt(index);
    }

    String formattedDate;
    List sleepSessions;

    for (int i = 0; i < sleepData.length; i++) {
      HealthDataPoint dataPoint = sleepData[i];

      if (dataPoint.type == HealthDataType.SLEEP_SESSION) {
        formattedDate = DateFormat('yyyy-MM-dd').format(dataPoint.dateTo);
        sleepSessions = [];

        do {
          // Format the start and end times of the sleep session
          String formattedStartDate = DateFormat('HH:mm:ss').format(dataPoint.dateFrom);
          String formattedEndDate = DateFormat('HH:mm:ss').format(dataPoint.dateTo);

          // Create a map for the sleep session data
          Map<String, dynamic> sleepSession = {
            'start': formattedStartDate,
            'end': formattedEndDate,
            'value': dataPoint.value.toString(),
            'sleepType': dataPoint.type.toString(),
          };
          sleepSessions.add(sleepSession);

          // Move to the next entry
          i++;
          if (i < sleepData.length) {
            dataPoint = sleepData[i];
          } else {
            break; // End of the list
          }
        } while (dataPoint.type != HealthDataType.SLEEP_SESSION);

        // Adjust for the upcoming loop increment
        i--;

        // Upload the collected sleep session data to Firebase
        await databaseReference.child(deviceId).child(formattedDate).set(sleepSessions);
      }
    }
  }
}