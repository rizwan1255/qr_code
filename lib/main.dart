import 'package:flutter/material.dart';
import 'package:qr_code/screens/home_screen.dart';
import 'package:qr_code/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        "/home":(context) =>HomeScreen(),
      },
      home: SplashScreen(),
    );
  }
}
