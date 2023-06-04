import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import 'onBoarding.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 50,
      backgroundColor: '4DA934'.toColor(),
      splashTransition: SplashTransition.fadeTransition,
      splash: Image.asset('assets/hotelpedia.png'),
      nextScreen: onBoarding(),
    );
  }
}
