import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/utils/asset_util.dart';
import 'package:prochain/presentation/module/splash_screen/controller/splash_screen_controller.dart';

class SplashScreen extends GetResponsiveView<SplashScreenController> {
  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
            child: Image.asset(
                AssetUtil().path(path: 'logo/official-logo-transparent.png'),
                width: 240)),
      ),
    );
  }
}
