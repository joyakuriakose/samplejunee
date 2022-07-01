import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Text("Register"),
                  ),
                  ListTile(
                      leading: Icon(Icons.person),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Your Name',
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
