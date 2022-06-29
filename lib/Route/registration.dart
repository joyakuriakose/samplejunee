import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration"),
      ),
      body: Center(
      child: Text("Route Name: ${ModalRoute.of(context)?.settings.name}"),
      ),
    );
  }

}