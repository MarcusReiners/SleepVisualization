import 'device_ID.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:health/health.dart';
import 'package:intl/intl.dart';
import 'firebase_options.dart';


class FirebaseService {
  Future<void> initializeFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }


  Future<void> uploadSleepData(List<HealthDataPoint> sleepData) async {
    final databaseReference = FirebaseDatabase.instance.reference();
    final List<Map<String, dynamic>> sleepSessions = [];
    String deviceID = await getDeviceId();
    deviceID = deviceID.replaceAll(RegExp(r'[.\#$\[\]]'), '');

    for (HealthDataPoint dataPoint in sleepData) {
        // Convert date to a readable format
        String formattedStartDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(dataPoint.dateFrom);
        String formattedEndDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(dataPoint.dateTo);

        // Create a map for the sleep session and add it to the list
        sleepSessions.add({
          'start': formattedStartDate,
          'end': formattedEndDate,
          'value': dataPoint.value.toString(),
          'sleep type': dataPoint.type.toString()// Convert value to a string for storage
        });
    }

    // Upload the sleep sessions list to Firebase Realtime Database
    await databaseReference.child(deviceID).set(sleepSessions);
  }


}

