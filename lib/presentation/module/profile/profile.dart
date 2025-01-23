import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/profile/controller/profile_controller.dart';
import 'package:prochain/presentation/module/profile/widget/header_profile.dart';
import 'package:prochain/presentation/module/profile/widget/menu_profile.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ProfileScreen extends GetResponsiveView<ProfileController> {
  ProfileScreen({super.key});

  openOptionUpload({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: Get.width,
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: marginMd),
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xs: 6,
                      child: InkWell(
                        onTap: () {
                          controller.openCamera();
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.photo_camera,
                              color: colorGreyDark,
                              size: 36,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Pilih dari Kamera',
                              style: Get.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 6,
                      child: InkWell(
                        onTap: () {
                          controller.openGallery();
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              color: colorGreyDark,
                              size: 36,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Pilih dari Galeri',
                              style: Get.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: null,
          scrolledUnderElevation: 0,
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
          title: Text('Setting & Profile',
              style: Get.textTheme.titleLarge!
                  .merge(const TextStyle(fontWeight: FontWeight.w800))),
          backgroundColor: context.theme.colorScheme.surface,
        ),
        backgroundColor: context.theme.colorScheme.surface,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      HeaderProfileWidget(),
                      MenuProfileWidget(),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(marginMd),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        openOptionUpload(context: context);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(marginXs),
                        backgroundColor: colorWhite,
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: borderRadiusXs,
                          side: BorderSide(
                            color: colorGreyDark,
                            width: 0.25,
                          ),
                        ),
                      ),
                      child: Text(
                        'Ganti Photo',
                        style: Get.textTheme.titleMedium!.merge(TextStyle(
                          color: colorError,
                          fontSize: 14,
                        )),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(marginXs),
                        backgroundColor: colorButton.withOpacity(0.75), //withvalue
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: borderRadiusXs),
                      ),
                      child: Text(
                        'Update Profile',
                        style: Get.textTheme.titleMedium!.merge(TextStyle(
                          color: colorWhite,
                          fontSize: 14,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
