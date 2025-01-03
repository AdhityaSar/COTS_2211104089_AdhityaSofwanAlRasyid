import 'package:get/get.dart';
import 'package:kode/modules/onboarding/onboarding_page.dart';
import 'package:kode/modules/login/login_page.dart';
import 'package:kode/modules/main/main_page.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const main = '/main';

  static final routes = [
    GetPage(name: onboarding, page: () => OnboardingPage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: main, page: () => MainPage()),
  ];
}