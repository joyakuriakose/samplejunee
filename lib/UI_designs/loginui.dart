import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(

        child:
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset("assetes/images/dalia.webp",
                    fit: BoxFit.cover),
              ),
            ),
            // Column(crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Text("nsk")
            //   ],
            // ),

      ),



    );
  }
}
