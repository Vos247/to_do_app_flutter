import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BlackBackground extends StatelessWidget {
  final Widget child;

  const BlackBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Đặt màu status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: child,
    );
  }
}