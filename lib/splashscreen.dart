import 'package:flutter/material.dart';
import 'package:samplejunee/citiesimages.dart';
import 'package:samplejunee/validationform.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login.dart';

class SplashScreenn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LoginValidation(),
      title: const Text("Myntras",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.teal)),
      image: Image.asset("assetes/images/splash.jpeg"),
      loaderColor: Colors.amber,
      loadingText: const Text(
        "Loading",
        style: TextStyle(color: Colors.teal),
      ),
     // photoSize: 20,
      gradientBackground: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topRight,
          colors: [
            Colors.black12,
            Colors.white70,
            Colors.purpleAccent,
          ]),
    );
  }

}