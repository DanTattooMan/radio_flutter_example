import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      
      image: 
      Image.asset('assets/images/Radio_Logo_white.png'
      ),
      backgroundColor: Colors.black,
      photoSize: 30.0,
      loaderColor: Colors.white,
      seconds: 2,
      navigateAfterSeconds: "/home"
    );
  }
 
}