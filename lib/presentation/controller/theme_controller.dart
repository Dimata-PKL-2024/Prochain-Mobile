// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initDarkMode();
    orientationPortrait();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final RxBool isDarkMode = false.obs;
  late SharedPreferences preferences;
  late ThemeMode themeMode;

  void initDarkMode() async {
    preferences = await SharedPreferences.getInstance();
    isDarkMode.value = preferences.getBool('isDarkMode') ?? false;
    final themeMode = isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
    Get.changeThemeMode(themeMode);
    setStatusBar();
  }

  void setDarkMode(bool val, BuildContext context) async {
    await preferences.setBool('isDarkMode', val);
    isDarkMode.value = val;
    final themeMode = isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
    Get.changeThemeMode(themeMode);
    setStatusBar();
  }

  void setStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            isDarkMode.value ? Brightness.light : Brightness.dark,
      ),
    );
  }

  void orientationPortrait() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void orientationLandscape() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}
