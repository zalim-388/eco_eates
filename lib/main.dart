import 'package:eco_eates/SplashscreenPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; 
    var height = size.height;
    var width = size.width;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreenpage());
  }
}
