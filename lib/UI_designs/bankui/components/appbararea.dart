import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AppBarArea(),
    debugShowCheckedModeBanner: false,
  ));
}

class AppBarArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
        elevation: 0,
        // backgroundColor: const Color.fromARGB(255, 19, 129, 219),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'welcome! ',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            Text(
              'MAUSAM',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner))
        ],

    );
  }
}
