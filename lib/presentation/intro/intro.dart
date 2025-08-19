import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/constants/app_assets.dart';
import 'package:to_do_app_flutter/presentation/screens/background.dart';
import 'package:to_do_app_flutter/presentation/intro/onboarding.dart';
import 'dart:async';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    // Giả lập loading 2 giây, sau đó chuyển sang OnboardingScreen
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlackBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.introImage, width: 140, height: 180),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}