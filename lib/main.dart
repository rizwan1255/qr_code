import 'package:flutter/material.dart';
import 'package:qr_code/screens/generate_screen.dart';
import 'package:qr_code/screens/history_screen.dart';
import 'package:qr_code/screens/home_screen.dart';
import 'package:qr_code/screens/setting_screen.dart';
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
        "/setting":(context) =>SettingScreen(),
        "/generate":(context) =>GenerateScreen(),
        "/history":(context) =>HistoryScreen(),
      },
      home: SplashScreen(),
    );
  }
}
