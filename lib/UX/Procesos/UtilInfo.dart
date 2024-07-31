// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:sipco/UX/Services/LocalStore.dart';
// import 'package:network_info_plus/network_info_plus.dart';

import '../Services/LocalStore.dart';

class UtilInfo {
  static Future<void> obtenerDatosMobil() async =>
      await LocalStore.guardarMobil('');
  static Future<void> obtenerWifiInfo() async =>
      await LocalStore.guardarWifi('');
  // static Future<void> obtenerImei() async {
  //   var permission = await Permission.phone.status;
  //   if (permission.isGranted) {
  //     // String? imei = await DeviceImei().getDeviceImei();
  //     await LocalStore.guardarImei(
  //         (await DeviceImei().getDeviceImei()) ?? 'imei');
  //     // if (imei != null) {
  //     //   setState(() {
  //     //     getPermission = true;
  //     //     deviceImei = imei;
  //     //   });
  //     // }
  //   } else {
  //     PermissionStatus status = await Permission.phone.request();
  //     if (status == PermissionStatus.granted) {
  //       // setState(() {
  //       //   getPermission = false;
  //       // });
  //       obtenerImei();
  //     } else {
  //       // setState(() {
  //       //   getPermission = false;
  //       //   message = "Permission not granted, please allow permission";
  //       // });
  //     }
  //   }
  // }

  // static Future<void> obtenerMac() async =>
  //     await LocalStore.guardarMac(await GetMac.macAddress);
  static String obtenarDatos() =>
      LocalStore.obtenerMobil() + LocalStore.obtenerWifiInfo();
  //  +
  // '|' +
  // LocalStore.obtenerImei() +
  // '|' +
  // LocalStore.obtenerMac();
}
