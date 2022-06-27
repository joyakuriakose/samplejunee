import 'package:flutter/material.dart';
import 'package:samplejunee/customappbar.dart';
import 'package:samplejunee/main.dart';

class MySlide extends StatelessWidget {
  final String pageTextChanged;

  MySlide(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Page",
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}