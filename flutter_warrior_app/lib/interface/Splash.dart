import 'dart:async';
import 'package:flutter_warrior_app/interface/WarriorListScreen.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const WarriorListScreen());
    });
    return Scaffold(
      backgroundColor: GlobalColors.darkColor,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 350,
          height: 200,
        ),
      ),
    );
  }
}