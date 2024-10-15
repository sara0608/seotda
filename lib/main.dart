import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'mainMenu.dart';

void main() async {

  // 앱이 실행될 때 가로 모드로 고정
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,  // 가로 모드 (우측)
    DeviceOrientation.landscapeLeft,   // 가로 모드 (좌측)
  ]);

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 2000,
          splash: 'assets/log/ss_crew.png',
          nextScreen: MainMenu(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black),
    );
  }
}
