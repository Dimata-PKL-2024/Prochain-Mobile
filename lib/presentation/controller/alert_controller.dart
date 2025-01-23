import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';

class AlertController extends GetxController {
  returnAlert() => Get.back();

  exitAlert({required BuildContext context}) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: context.theme.colorScheme.surface,
          title: Text(
            'Keluar Aplikasi',
            style: Get.textTheme.titleLarge!
                .merge(TextStyle(color: colorError, fontSize: 12)),
          ),
          content: Text(
            'Apakah anda yakin untuk keluar dari aplikasi ini ?',
            textAlign: TextAlign.justify,
            style:
                Get.textTheme.bodyLarge!.merge(const TextStyle(fontSize: 10)),
          ),
          shape: RoundedRectangleBorder(borderRadius: borderRadiusDefault),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                "Tidak Jadi",
                style: Get.textTheme.titleMedium!.merge(TextStyle(
                  color: colorGreyDark,
                  fontSize: 10,
                )),
              ),
            ),
            SizedBox(width: marginXs),
            ElevatedButton(
              onPressed: () =>
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(marginXs),
                backgroundColor: colorButton,
                elevation: 0.5,
                shape:
                    RoundedRectangleBorder(borderRadius: borderRadiusDefault),
              ),
              child: Text(
                "Ya, Tutup",
                style: Get.textTheme.titleMedium!.merge(TextStyle(
                  color: colorWhite,
                  fontSize: 10,
                )),
              ),
            ),
          ],
        );
      },
    );
  }

  infoAlert({
    String? infoTitle,
    String? infoDescription,
    required BuildContext context,
  }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Get.theme.cardColor,
          title: Text(
            infoTitle.toString(),
            style: Get.textTheme.titleLarge!
                .merge(TextStyle(color: colorError, fontSize: 12)),
          ),
          content: Text(
            infoDescription.toString(),
            style:
                Get.textTheme.bodyLarge!.merge(const TextStyle(fontSize: 10)),
          ),
          shape: RoundedRectangleBorder(borderRadius: borderRadiusDefault),
        );
      },
    );
  }

  valueAlert({
    String? valueTitle,
    String? valueDescription,
    String? valueButtonTitle,
    dynamic onTap,
    required BuildContext context,
  }) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Get.theme.cardColor,
          title: Text(
            valueTitle.toString(),
            style: Get.textTheme.titleLarge!
                .merge(TextStyle(color: colorSuccess, fontSize: 14.0)),
          ),
          content: Text(
            valueDescription.toString(),
            style:
                Get.textTheme.bodyLarge!.merge(const TextStyle(fontSize: 12.0)),
          ),
          shape: RoundedRectangleBorder(borderRadius: borderRadiusXs),
          actions: [
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(marginXs),
                backgroundColor: colorButton,
                elevation: 0.5,
                shape:
                    RoundedRectangleBorder(borderRadius: borderRadiusDefault),
              ),
              child: Text(
                valueButtonTitle.toString(),
                style: Get.textTheme.titleMedium!.merge(TextStyle(
                  color: colorWhite,
                  fontSize: 10,
                )),
              ),
            ),
          ],
        );
      },
    );
  }

  snackBarAlert({
    String? infoTitle,
    String? infoDescription,
    dynamic isShadow,
    dynamic snackPosition,
    dynamic backgroundColor,
    dynamic textColor,
  }) {
    Get.snackbar(
      infoTitle.toString(),
      infoDescription.toString(),
      snackPosition: snackPosition,
      backgroundColor: backgroundColor,
      borderRadius: marginMd,
      margin: EdgeInsets.all(marginMd),
      duration: const Duration(seconds: 3),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      colorText: textColor,
      boxShadows: isShadow == true
          ? [
              BoxShadow(
                color: colorShadow,
                blurRadius: 15,
                spreadRadius: -2,
                offset: const Offset(0, 6),
              ),
            ]
          : null,
    );
  }

  scaffoldMessengerAlert({
    String? title,
    String? label,
    dynamic backgroundColor,
    dynamic textColor,
    dynamic onTap,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          title.toString(),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Get.textTheme.titleLarge!.merge(
            TextStyle(color: textColor, fontSize: 10),
          ),
        ),
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: marginXs, vertical: 5),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: label.toString(),
          textColor: textColor,
          onPressed: onTap,
        ),
      ),
    );
  }
}
