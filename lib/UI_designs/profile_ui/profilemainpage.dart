import 'package:flutter/material.dart';
import 'package:samplejunee/UI_designs/profile_ui/components/iconsfile.dart';
import 'package:samplejunee/UI_designs/profile_ui/components/profilelistview.dart';

import 'components/profileappbar.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileMainPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      body: SafeArea(

        child: ListView(

          children: [
            ProfileAppBar(),
            IconsFile(),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Chromicle",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "@joyakuriakose",style: TextStyle(color: Colors.grey[400]),
                ),
                 SizedBox(height: 10),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Mobile App Developer And Open',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Source Enthusisastic',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            ProfileListView(),
          ],
        ),
      ),
    );
  }
}
