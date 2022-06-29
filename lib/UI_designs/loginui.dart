import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assetes/images/wallpic.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
      ),

    );
  }

}