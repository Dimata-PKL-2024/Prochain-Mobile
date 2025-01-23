import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:prochain/core/config/routes.dart';
import 'package:prochain/core/constant/intro_constant.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/intro/controller/intro_controller.dart';

class IntroScreen extends GetResponsiveView<IntroController> {
  IntroScreen({super.key});
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
      child: Scaffold(
        backgroundColor: colorPrimary,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: IntroductionScreen(
            globalBackgroundColor: colorPrimary,
            pages: List.generate(
              dataIntroConstant.length,
              (index) {
                return PageViewModel(
                  titleWidget: Container(
                    margin: EdgeInsets.symmetric(horizontal: marginMd),
                    child: Text(
                      dataIntroConstant[index].title,
                      textAlign: TextAlign.center,
                      style: Get.textTheme.headlineSmall!.merge(
                        const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  bodyWidget: Container(
                    margin: EdgeInsets.symmetric(horizontal: marginMd),
                    child: Text(
                      dataIntroConstant[index].description,
                      textAlign: TextAlign.justify,
                      style: Get.textTheme.bodyLarge!.merge(
                        const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  image: Center(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: marginMd, right: marginMd, top: marginMd * 3),
                      child: Image.asset(
                        dataIntroConstant[index].image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  useRowInLandscape: true,
                );
              },
            ),
            showSkipButton: true,
            skip: Text("Lewati",
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12))),
            next: Text("Lanjutkan",
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12))),
            done: SizedBox(
              width: Get.width,
              child: Container(
                decoration: BoxDecoration(
                  color: colorButton,
                  borderRadius: borderRadiusXs,
                ),
                child: Container(
                  margin: EdgeInsets.all(marginXs),
                  child: Center(
                    child: Text(
                      "Mulai",
                      style: Get.textTheme.titleSmall!.merge(
                        TextStyle(color: colorWhite, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: Size.square(marginXs),
              activeSize: Size(marginMd, marginXs),
              activeColor: colorButton,
              color: colorGrey,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(marginMd),
              ),
            ),
            onDone: () => Get.offAllNamed(authRoute),
          ),
        ),
      ),
    );
  }
}
