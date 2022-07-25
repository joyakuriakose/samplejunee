import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboarding/onboarding.dart';

// void main(){
//   runApp(MaterialApp(home: IconsFile()));
// }

class IconsFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialIcon(FontAwesomeIcons.facebook,),
          SizedBox(width: 15),
          buildSocialIcon(FontAwesomeIcons.linkedin),
          SizedBox(width: 15),
          buildSocialIcon(FontAwesomeIcons.googlePlus),
          SizedBox(width: 15),
          buildSocialIcon(FontAwesomeIcons.twitter),
        ],
      ),
    );
  }

  buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Icon(icon, size: 32),
            ),
          ),
        ),
      );
}
