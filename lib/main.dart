// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/config/routes.dart';
import 'package:prochain/core/extension/storage_extension.dart';
import 'package:prochain/core/theme/theme.dart';
import 'package:prochain/core/utils/font_util.dart';
import 'package:prochain/presentation/controller/theme_controller.dart';
import 'package:prochain/presentation/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  StorageExtension().initStorage();
  Get.put(ThemeController());
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");
    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: 'ProChain',
      theme: theme.light(),
      defaultTransition: Transition.cupertino,
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreenRoute,
      getPages: MainRouter().router(),
    );
  }
}
