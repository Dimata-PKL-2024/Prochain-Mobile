// ignore_for_file: unnecessary_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prochain/presentation/controller/alert_controller.dart';
import 'package:prochain/presentation/controller/permission_controller.dart';

class AuthController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    permissionController.checkPermissionRequest();
    if (kDebugMode) {
      print('Username : ${storage.read('username')}');
      print('Password : ${storage.read('password')}');
      print('Remember Me : ${storage.read('rememberMe')}');
    }
    storage.read('username') != null && storage.read('username') != null
        ? inputUsername.text = storage.read('username')
        : inputUsername.text = '';
    storage.read('password') != null && storage.read('password') != null
        ? inputPassword.text = storage.read('password')
        : inputPassword.text = '';
    if (storage.read('rememberMe') != null &&
        storage.read('rememberMe') != null) {
      storage.read('rememberMe') == 'true'
          ? isRememberMe.value = true
          : isRememberMe.value = false;
    } else {
      isRememberMe.value = false;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  GetStorage storage = GetStorage('Dimata');

  final GlobalKey<FormState> authFormKey = GlobalKey<FormState>();
  final TextEditingController inputUsername = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();
  final FocusNode usernameFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  final RxBool isShowPassword = true.obs;
  void visibilityPassword() {
    isShowPassword.value = !isShowPassword.value;
    update();
  }

  final RxBool isRememberMe = false.obs;

  fieldFocusChange(
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus,
  ) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  final AlertController alertController = Get.put(AlertController());

  final PermissionController permissionController =
      Get.put(PermissionController());
}
