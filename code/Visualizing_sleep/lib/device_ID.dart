import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

@pragma('vm:entry-point')
Future<String> getDeviceId() async {
  String deviceId = '';
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  try {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      deviceId = androidInfo.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      deviceId = iosInfo.identifierForVendor.toString();
    }
  } catch (e) {
    print('Error getting device ID: $e');
  }

  return deviceId;
}