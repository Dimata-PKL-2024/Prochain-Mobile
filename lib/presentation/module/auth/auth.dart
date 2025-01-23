import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/auth/controller/auth_controller.dart';
import 'package:prochain/presentation/module/auth/widget/form_auth.dart';

class AuthScreen extends GetResponsiveView<AuthController> {
  AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) =>
          controller.alertController.scaffoldMessengerAlert(
        context: context,
        backgroundColor: colorError,
        textColor: colorWhite,
        title: "Tekan OK untuk menutup aplikasi",
        label: "OK",
        onTap: () =>
            SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
      ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: context.theme.colorScheme.surface,
          resizeToAvoidBottomInset: false,
          body: FormAuthWidget(),
        ),
      ),
    );
  }
}
