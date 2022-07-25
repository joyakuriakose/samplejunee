import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.ac_unit, size: 30),
              SizedBox(height: 30),
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    height: 500,
                    width: 400,
                    // color: Colors.yellow,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(35, 5, 35, 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: "Full Name",
                                hintText: "Enter your Name",
                                // prefixIcon: Icon(Icons.person),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 5, 35, 5),
                            child: TextFormField(

                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                labelText: "E-mail",
                                hintText: 'Enter your mail',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 5, 35, 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.key),
                                labelText: 'Password',
                                hintText: 'Enter Your Password',
                                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 5, 35, 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.key),
                                  labelText: 'Conform Password',
                                  hintText: 'Conform Your Password',
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined)),
                            ),
                          ),
                          SizedBox(height: 35),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red[700],
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {},
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Already Register?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                TextSpan(
                                  text: '  Login',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red[700],
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
