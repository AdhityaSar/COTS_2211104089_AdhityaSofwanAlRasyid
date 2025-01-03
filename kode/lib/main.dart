import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kode/modules/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF00AA13),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF727272),
        ),
      ),
      initialRoute: AppRoutes.onboarding,
      getPages: AppRoutes.routes,
    );
  }
}