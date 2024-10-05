import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
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
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: 'assets/images/prosoft_logo.png',
          nextScreen: MainMenu(),
          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.white),

    );
  }
}