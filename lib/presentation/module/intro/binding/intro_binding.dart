import 'package:get/get.dart';
import 'package:prochain/presentation/module/intro/controller/intro_controller.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(IntroController());
  }
}
