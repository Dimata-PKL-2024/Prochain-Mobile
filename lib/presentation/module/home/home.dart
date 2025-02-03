import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/home/controller/home_controller.dart';
import 'package:prochain/presentation/module/home/page/home_dashboard.dart';
import 'package:prochain/presentation/module/home/widget/dashboard_header.dart';
import 'package:prochain/presentation/module/home/widget/home_drawer.dart';

class HomeScreen extends GetResponsiveView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
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
          key: controller.scaffoldDashboardKey,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            surfaceTintColor: null,
            scrolledUnderElevation: 0,
            titleSpacing: 0, // Memastikan spacing untuk burger button
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () =>
                  controller.scaffoldDashboardKey.currentState?.openDrawer(),
            ),
            title: DashboardHeader(
              profileImagePath: 'assets/ico/icon-profile.png',
              onNotificationTap: () {
                // Handle notification click
              },
            ),
            backgroundColor: colorPrimary,
          ),
          drawer: Drawer(
            child: HomeDrawerWidget(),
          ),
          backgroundColor: colorPrimary,
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Stack(
              children: [
                IndexedStack(
                  index: controller.currentNavbar.value,
                  children: [
                    const HomeDashboardPage(),
                    Container(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 