import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/auth/controller/auth_register_controller.dart';
import 'package:prochain/presentation/module/auth/widget/form_auth_register.dart';

class AuthRegisterScreen extends GetResponsiveView<AuthRegisterController> {
  AuthRegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back, color: colorBlack),
            ),
            surfaceTintColor: null,
            scrolledUnderElevation: 0,
            title: Text('Register',
                style: Get.textTheme.titleLarge!
                    .merge(const TextStyle(fontWeight: FontWeight.w800))),
            backgroundColor: context.theme.colorScheme.surface,
          ),
          backgroundColor: context.theme.colorScheme.surface,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: FormAuthRegisterWidget(),
          ),
        ),
      ),
    );
  }
}
