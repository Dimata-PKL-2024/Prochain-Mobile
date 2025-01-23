// ignore_for_file: avoid_print, unnecessary_overrides

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void checkPermissionRequest() async {
    final DeviceInfoPlugin info = DeviceInfoPlugin();
    final AndroidDeviceInfo androidInfo = await info.androidInfo;
    final int androidVersion = int.parse(androidInfo.version.release);

    if (androidVersion >= 13) {
      print("Android 13 Keatas");
      Map<Permission, PermissionStatus> listPermission = await [
        Permission.location,
        Permission.camera,
        Permission.photos,
      ].request();

      if (listPermission[Permission.location]!.isDenied) {
        print("Lokasi belum diaktifkan");
        openAppSettings();
      }

      if (listPermission[Permission.camera]!.isDenied) {
        print("Kamera belum diaktifkan");
        openAppSettings();
      }

      if (listPermission[Permission.photos]!.isDenied) {
        print("Izin File Foto belum diaktif");
        openAppSettings();
      }
    } else {
      print("Android 12 Kebawah");
      Map<Permission, PermissionStatus> listPermission = await [
        Permission.location,
        Permission.camera,
        Permission.storage,
      ].request();

      if (listPermission[Permission.location]!.isDenied) {
        print("Lokasi belum diaktifkan");
        openAppSettings();
      }

      if (listPermission[Permission.camera]!.isDenied) {
        print("Kamera belum diaktifkan");
        openAppSettings();
      }

      if (listPermission[Permission.storage]!.isDenied) {
        print("Izin Storage belum diaktif");
        openAppSettings();
      }
    }
  }
}
