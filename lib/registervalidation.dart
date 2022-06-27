import 'package:flutter/material.dart';
import 'package:samplejunee/MyList.dart';

class RegisterForm extends StatelessWidget {
  final _registerform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _registerform,
        child: ListView(
          padding: EdgeInsets.all(50),
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter Your Full Name',
                    helperText: 'First Name, Middle Name, Last Name',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
                validator: (text) {
                  if (text == null || !(text.contains('')) && text.isNotEmpty) {
                    return "Enter name!";
                  }
                  return null;
                }),
            TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Your Emmail Address',
                    helperText: 'Email address should contain lowerase letters',
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
            Container(
              child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    helperText: 'Password should contain alphabets, numbers and symbols',
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
            Container(
              child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Enter your password',
                    helperText: 'Password should contain alphabets, numbers and symbols',
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
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('REGISTER'),
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Yay! A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );

                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
