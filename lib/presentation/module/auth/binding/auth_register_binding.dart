import 'package:get/get.dart';
import 'package:prochain/presentation/module/auth/controller/auth_register_controller.dart';

class AuthRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRegisterController());
  }
}
