import 'package:flutter/material.dart';
import 'package:flutter_base/shared/constants/app_colors.dart';
import 'package:flutter_base/shared/constants/app_config.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'modules/introduction/introduction_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.applicationName,
      debugShowCheckedModeBanner: AppConfig.isDebugApp,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const IntroductionView(),
    );
  }
}
