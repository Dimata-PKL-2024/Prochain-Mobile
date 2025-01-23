// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:prochain/core/config/routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initSplashScreen();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  initSplashScreen() async {
    const duration = Duration(seconds: 2);
    final preferences = await SharedPreferences.getInstance();
    int launchCount = preferences.getInt('counter') ?? 0;
    preferences.setInt('counter', launchCount + 1);

    return Timer(duration, () {
      if (launchCount == 0) {
        Get.offAllNamed(introRoute);
      } else {
        Get.offAllNamed(introRoute);
      }
    });
  }
}
