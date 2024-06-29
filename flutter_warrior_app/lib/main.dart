import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/interface/Splash.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Warrior App',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalColors.bgDarkColor
      ),
      home: const SplashView(),
    );
  }
}
