import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale, //for setting localization strings
      title: 'Meditation App',
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.pages,
    );
  }
}
