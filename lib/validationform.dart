import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplejunee/registervalidation.dart';

import 'MyList.dart';

class LoginValidation extends StatelessWidget {
  final loginform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: loginform, //assigning key to form

          child: ListView(
            padding: const EdgeInsets.all(50),
            children: [
              Center(
                child: Container(
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter Your Email Address',
                      helperText:
                          'Email address should contain lowerase letters',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                  validator: (text) {
                    if (text == null ||
                        !(text.contains('@')) && text.isNotEmpty) {
                      return "Enter valid email address!";
                    }
                    return null;
                  }),
              SizedBox(height: 15),
              Container(
                child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: "Enter Your Password",
                      helperText: "Password should contain alphabets, numbers and symbols",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    obscuringCharacter: '*',
                    validator: (text) {
                      if (text == null ||
                          !(text.length <= 5) && text.isNotEmpty) {
                        return "Enter a valid password atmost 5 characters!";
                      }
                      return null;
                    }),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)), primary: Colors.red, fixedSize: Size(27, 4)),
                  child: Text('LOGIN'),
                  onPressed: () {
                    final isValidate = loginform.currentState!.validate();
                    if (!isValidate) {
                      print('Not Valid Form');
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterForm()));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
