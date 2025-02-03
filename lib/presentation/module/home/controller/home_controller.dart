// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prochain/presentation/controller/alert_controller.dart';
import 'package:prochain/presentation/controller/permission_controller.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    permissionController.checkPermissionRequest();
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

  final GlobalKey<ScaffoldState> scaffoldDashboardKey =
      GlobalKey<ScaffoldState>();

  final RxInt currentNavbar = 0.obs;
  var isMasterDataExpanded = false.obs;
  var projects = 20.obs;
  var productions = 234.obs;
  var stocks = 43.obs;

  final GlobalKey<FormState> orderFormKey = GlobalKey<FormState>();
  final TextEditingController inputSearchOrder = TextEditingController();
  final FocusNode searchOrderFocus = FocusNode();

  final AlertController alertController = Get.put(AlertController());

  final PermissionController permissionController =
      Get.put(PermissionController());
}
