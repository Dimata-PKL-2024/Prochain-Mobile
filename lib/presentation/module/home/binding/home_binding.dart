import 'package:get/get.dart';
import 'package:prochain/presentation/module/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
