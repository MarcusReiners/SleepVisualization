// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6Fc_ArXX5lmFJcUYDEnoX5drJcrpvChQ',
    appId: '1:816451337512:android:26cce42fdec97bc54a641d',
    messagingSenderId: '816451337512',
    projectId: 'visualizing-sleep',
    databaseURL: 'https://visualizing-sleep-default-rtdb.firebaseio.com',
    storageBucket: 'visualizing-sleep.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGIguMOTFJRHFsYz7jWkXgRSZPYywtL-A',
    appId: '1:816451337512:ios:15d0d9d176740a7e4a641d',
    messagingSenderId: '816451337512',
    projectId: 'visualizing-sleep',
    databaseURL: 'https://visualizing-sleep-default-rtdb.firebaseio.com',
    storageBucket: 'visualizing-sleep.appspot.com',
    iosClientId:
        '816451337512-tlkgpm7susubrfd1tknu097v8aspdoi2.apps.googleusercontent.com',
    iosBundleId: 'com.example.visualizingSleep',
  );
}
