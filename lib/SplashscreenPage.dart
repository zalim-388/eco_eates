import 'dart:async';

import 'package:eco_eates/welcomepage.dart';
import 'package:flutter/material.dart';

class Splashscreenpage extends StatefulWidget {
  const Splashscreenpage({super.key});

  @override
  State<Splashscreenpage> createState() => _SplashscreenpageState();
}

class _SplashscreenpageState extends State<Splashscreenpage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcomepage()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/Splash screen Page.png'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Image.asset(
          'image/Logo.png',
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
