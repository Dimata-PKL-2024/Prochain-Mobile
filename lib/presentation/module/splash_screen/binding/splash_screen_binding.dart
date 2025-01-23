import 'package:get/get.dart';
import 'package:prochain/presentation/module/splash_screen/controller/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
