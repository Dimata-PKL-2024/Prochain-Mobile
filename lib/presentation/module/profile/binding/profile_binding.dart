import 'package:get/get.dart';
import 'package:prochain/presentation/module/profile/controller/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
