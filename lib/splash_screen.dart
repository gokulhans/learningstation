import 'dart:math';

import 'package:csmamoc/exit_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) async {
    
        Get.off(() => const Exithome());
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.green,Colors.red],
            transform: GradientRotation(9 * pi / 180),
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(image: AssetImage("assets/app_icon/playstore.png"))
          ],
        )),
      ),
    );
  }
}
