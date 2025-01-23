import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/config/routes.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/utils/asset_util.dart';
import 'package:prochain/presentation/module/home/controller/home_controller.dart';

class HomeDrawerWidget extends GetResponsiveView<HomeController> {
  HomeDrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(marginSm),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundColor: colorGreyLight,
                  backgroundColor: colorGreyLight,
                  radius: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorGreyLight,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(AssetUtil().path(
                              path: 'icon/icon-profile.png')) as ImageProvider,
                          filterQuality: FilterQuality.low,
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(width: marginSm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Admin',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Get.textTheme.titleLarge!.merge(const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '-',
                        style: Get.textTheme.bodySmall!
                            .merge(const TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: marginSm),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 1;
                      Get.back();
                    },
                    leading: Icon(Icons.storage_outlined,
                        color: colorGreyDark, size: 20),
                    title: Text(
                      'Master Data',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 2;
                      Get.back();
                    },
                    leading: Icon(Icons.shopping_cart_checkout_outlined,
                        color: colorGreyDark, size: 20),
                    title: Text(
                      'Pembelian',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 3;
                      Get.back();
                    },
                    leading: Icon(Icons.download_outlined,
                        color: colorGreyDark, size: 20),
                    title: Text(
                      'Penerimaan',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 4;
                      Get.back();
                    },
                    leading: Icon(Icons.bar_chart_outlined,
                        color: colorGreyDark, size: 20),
                    title: Text(
                      'Produksi',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 5;
                      Get.back();
                    },
                    leading: Icon(Icons.grid_view_outlined,
                        color: colorGreyDark, size: 20),
                    title: Text(
                      'Stok',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 6;
                      Get.back();
                    },
                    leading: Icon(Icons.summarize_outlined,
                        color: colorGreyDark, size: 20),
                    title: Text(
                      'Laporan',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      controller.currentNavbar.value = 7;
                      Get.back();
                    },
                    leading:
                        Icon(Icons.settings, color: colorGreyDark, size: 20),
                    title: Text(
                      'Sistem',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Get.toNamed(profileRoute);
                    },
                    leading: Icon(Icons.person, color: colorGreyDark, size: 20),
                    title: Text(
                      'Profile',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      Get.offAllNamed(authRoute);
                    },
                    leading:
                        Icon(Icons.exit_to_app, color: colorGreyDark, size: 20),
                    title: Text(
                      'Logout',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
