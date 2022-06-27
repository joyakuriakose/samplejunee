import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplejunee/MyList.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Myntras"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: "Enter your email",
                  labelText: "Username",
                  helperText: 'Username should contain lowercase letters',
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.green),
              keyboardType: TextInputType.text,
              // obscureText: true,
              // obscuringCharacter: '*',
              toolbarOptions: ToolbarOptions(
                copy: true,
                cut: true,
                selectAll: true,
                paste: true,
              ),
              // onChanged: (value){
              //      input=value;
              //      print(input);
              // },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: "Enter your password",
                  labelText: "Password",
                  helperText:
                      "Password should contain lowercase letters, uppercaseletters and symbols",
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.green),
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
              toolbarOptions: ToolbarOptions(
                copy: true,
                cut: true,
                selectAll: true,
                paste: true,
              ),
              // onChanged: (value){
              //      input=value;
              //      print(input);
              // },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyList()),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.yellow),
            ),
          ), //
        ],
      ),
    );
  }
}
