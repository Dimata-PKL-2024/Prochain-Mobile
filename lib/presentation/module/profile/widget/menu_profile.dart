import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/profile/controller/profile_controller.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MenuProfileWidget extends GetResponsiveView<ProfileController> {
  MenuProfileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width > 600 ? marginMd : marginXs),
      child: Column(
        children: [
          if (size.width > 600) ...[
            SizedBox(height: marginMd),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 6,
                  child: Container(
                    margin: EdgeInsets.only(right: marginXs, bottom: marginMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Lengkap',
                          style: Get.textTheme.bodySmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-',
                          style: Get.textTheme.titleSmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  child: Container(
                    margin: EdgeInsets.only(left: marginXs, bottom: marginMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alamat',
                          style: Get.textTheme.bodySmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-',
                          style: Get.textTheme.titleSmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  child: Container(
                    margin: EdgeInsets.only(right: marginXs, bottom: marginMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: Get.textTheme.bodySmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-',
                          style: Get.textTheme.titleSmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  child: Container(
                    margin: EdgeInsets.only(left: marginXs, bottom: marginMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: Get.textTheme.bodySmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-',
                          style: Get.textTheme.titleSmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  child: Container(
                    margin: EdgeInsets.only(right: marginXs, bottom: marginMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Role',
                          style: Get.textTheme.bodySmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-',
                          style: Get.textTheme.titleSmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  child: Container(
                    margin: EdgeInsets.only(left: marginXs, bottom: marginMd),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: Get.textTheme.bodySmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '-',
                          style: Get.textTheme.titleSmall!
                              .merge(const TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ] else ...[
            ListTile(
              dense: true,
              title: Text(
                'Nama Lengkap',
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
              subtitle: Text(
                '-',
                style: Get.textTheme.bodySmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                'Alamat',
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
              subtitle: Text(
                '-',
                style: Get.textTheme.bodySmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                'Phone',
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
              subtitle: Text(
                '-',
                style: Get.textTheme.bodySmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                'Email',
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
              subtitle: Text(
                '-',
                style: Get.textTheme.bodySmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                'Role',
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
              subtitle: Text(
                '-',
                style: Get.textTheme.bodySmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                'Location',
                style: Get.textTheme.titleSmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
              subtitle: Text(
                '-',
                style: Get.textTheme.bodySmall!
                    .merge(const TextStyle(fontSize: 12)),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
