import 'package:flutter/material.dart';
import 'package:samplejunee/UI_designs/profile_ui/components/iconsfile.dart';
import 'package:samplejunee/UI_designs/profile_ui/components/profilelistview.dart';

import 'components/profileappbar.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileMainPage(),
  ));
}

class ProfileMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.grey[200],
        height: double.infinity,
        width: double.infinity,
        child: Column(
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
                  "@joyakuriakose",
                ),
                // SizedBox(height: 50),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Mobile App Developer And Open',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )
                        ],
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
                  ProfileListView(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
