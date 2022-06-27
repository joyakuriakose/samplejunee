import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LotAnimat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_giodppcr.json", height: 200, width: 200),
      ),
    );
  }
  
}