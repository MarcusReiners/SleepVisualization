import 'dart:async';
import 'dart:io';

import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_background_service_ios/flutter_background_service_ios.dart';
import 'package:visualizing_sleep/firebase_options.dart';
import 'package:visualizing_sleep/firebase_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

import 'HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  authorize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  runApp(const HealthApp());
}

// Define the types to get.
final types = [
  HealthDataType.SLEEP_AWAKE,
  HealthDataType.SLEEP_DEEP,
  HealthDataType.SLEEP_REM,
  HealthDataType.SLEEP_SESSION,
  HealthDataType.SLEEP_ASLEEP,
];

DateTime now = DateTime.now();
DateTime start = now.subtract(const Duration(days: 7));

// create a HealthFactory for use in the app
HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);

// with corresponding permissions
final permissions = types.map((e) => HealthDataAccess.READ).toList();

FirebaseService firebaseService = FirebaseService();

Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'Visualizing Sleep',
    'Visualizing Sleep',
    description: 'Uploading Sleep Data...',
    importance: Importance.low,
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  if (Platform.isIOS || Platform.isAndroid) {
    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        iOS: DarwinInitializationSettings(),
        android: AndroidInitializationSettings('ic_bg_service_small'),
      ),
    );
  }

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await service.configure(
    iosConfiguration: IosConfiguration(
      autoStart: true,
      onForeground: onStart,
      onBackground: onIosBackground,
    ),
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      isForegroundMode: true,
      autoStart: true,
      notificationChannelId: 'Visualizing Sleep',
      initialNotificationTitle: 'Visualizing Sleep',
      initialNotificationContent: 'Initializing',
      foregroundServiceNotificationId: 888,
      autoStartOnBoot: true,
    ),
  );

  service.startService();
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });
  }
  service.on('stopService').listen((event) {
    service.stopSelf();
  });
  Timer.periodic(const Duration(minutes: 1), (timer) async {
    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        flutterLocalNotificationsPlugin.show(
          888,
          'Visualizing Sleep',
          'Synchronized',
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'Visualizing Sleep',
              'Visualizing Sleep',
              icon: 'ic_bg_service_small',
              ongoing: true,
            ),
          ),
        );
      }
    }
    fetchData(start, now);
    print("Background Service Running");
    service.invoke("update");
  });
}

Future authorize() async {
  // Request ACTIVITY_RECOGNITION permission
  await Permission.activityRecognition.request();

  // Check if we have permission
  bool? hasPermissions =
  await health.hasPermissions(types, permissions: permissions);

  bool authorized = false;
  if (!hasPermissions!) {
    // requesting access to the data types before reading them
    try {
      authorized =
      await health.requestAuthorization(types, permissions: permissions);
    } catch (error) {
      print("Exception in authorize: $error");
    }
  }
}

@pragma('vm:entry-point')
Future fetchData(DateTime startDate, DateTime endDate) async {
  try {
    // fetch health data
    List<HealthDataPoint> healthData =
    await health.getHealthDataFromTypes(startDate, endDate, types);

    await firebaseService.initializeFirebase();

    await FirebaseAuth.instance.signInAnonymously();

    // Upload the sleep data to Firebase
    await firebaseService.uploadSleepData(healthData);
  } catch (error) {
    print("Exception in getHealthDataFromTypes: $error");
  }
}

class HealthApp extends StatefulWidget {
  const HealthApp({super.key});

  @override
  _HealthAppState createState() => _HealthAppState();
}

class _HealthAppState extends State<HealthApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visualizing Sleep',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}
