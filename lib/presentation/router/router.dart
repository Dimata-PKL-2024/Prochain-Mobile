import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:prochain/core/config/routes.dart';
import 'package:prochain/presentation/module/auth/auth.dart';
import 'package:prochain/presentation/module/auth/auth_register.dart';
import 'package:prochain/presentation/module/auth/binding/auth_binding.dart';
import 'package:prochain/presentation/module/auth/binding/auth_register_binding.dart';
import 'package:prochain/presentation/module/home/binding/home_binding.dart';
import 'package:prochain/presentation/module/home/home.dart';
import 'package:prochain/presentation/module/intro/binding/intro_binding.dart';
import 'package:prochain/presentation/module/intro/intro_screen.dart';
import 'package:prochain/presentation/module/profile/binding/profile_binding.dart';
import 'package:prochain/presentation/module/profile/profile.dart';
import 'package:prochain/presentation/module/splash_screen/binding/splash_screen_binding.dart';
import 'package:prochain/presentation/module/splash_screen/splash_screen.dart';

class MainRouter {
  router() {
    return [
      // Init
      GetPage(
        name: splashScreenRoute,
        page: () => SplashScreen(),
        binding: SplashScreenBinding(),
      ),
      GetPage(
        name: introRoute,
        page: () => IntroScreen(),
        binding: IntroBinding(),
      ),
      // Auth
      GetPage(
        name: authRoute,
        page: () => AuthScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: authRegisterRoute,
        page: () => AuthRegisterScreen(),
        binding: AuthRegisterBinding(),
      ),
      // Home
      GetPage(
        name: homeRoute,
        page: () => HomeScreen(),
        binding: HomeBinding(),
      ),
      // Profile
      GetPage(
        name: profileRoute,
        page: () => ProfileScreen(),
        binding: ProfileBinding(),
      ),
    ];
  }
}
