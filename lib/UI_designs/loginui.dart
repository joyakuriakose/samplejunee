import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 800,
        width: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: const NetworkImage(
                "https://images.pexels.com/photos/6187637/pexels-photo-6187637.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Welcome to this awesome login app.",
                  style: TextStyle(color: Colors.white70),
                ),
                const Text(
                  'You are awesome',
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red[700],
                                    onPrimary: Colors.white70,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    fixedSize: const Size(180, 35)),
                                child: const Text('Login')),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey[700],
                                  onPrimary: Colors.white70,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  fixedSize: const Size(180, 35)),
                              child: const Text('Sign Up'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Row(
                      children: [
                        TextButton.icon(icon: const Icon(FontAwesomeIcons.google, color: Colors.white),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            side: const BorderSide(color: Colors.red),fixedSize: const Size(200, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          label: (const Text("Continue with google", style: TextStyle(color: Colors.white),)),

                          // child: Text("Continue with google"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
