import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

/// Fetches the unique device identifier.
///
/// This function retrieves the device identifier which can be used to uniquely identify
/// a device. On Android, it fetches the Android hardware ID, and on iOS, it fetches the
/// identifier for vendor (a string that uniquely identifies the device to the app’s vendor).
///
/// The function is annotated with `@pragma('vm:entry-point')` to ensure it's a valid entry point
/// to the Dart portion of the app when used in Flutter.
///
/// @returns A [Future] that completes with the device identifier as a [String].
/// In case of an error while fetching the device identifier, an error message is printed to the console,
/// and an empty string is returned.
@pragma('vm:entry-point')
Future<String> getDeviceId() async {
  String deviceId = '';
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  try {
    // Check the platform the app is running on to call the appropriate method
    // to get the device identifier.
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      deviceId = androidInfo.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      deviceId = iosInfo.identifierForVendor.toString();
    }
  } catch (e) {
    // Log any errors encountered during the process.
    print('Error getting device ID: $e');
  }

  return deviceId;
}
