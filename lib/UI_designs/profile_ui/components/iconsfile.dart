import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboarding/onboarding.dart';
import 'package:flutter_svg/flutter_svg.dart';

// void main(){
//   runApp(MaterialApp(home: IconsFile()));
// }

class IconsFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 120, right: 120, top: 25),
      height: 40,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assetes/svgimages/fb.svg',
              height: 50,
              width: 50,
            ),
            // SizedBox(width: 2),
            SvgPicture.asset(
              'assetes/svgimages/googleplus.svg',
              height: 50,
              width: 50,
            ),
            SvgPicture.asset(
              'assetes/svgimages/twitter.svg',
              height: 50,
              width: 50,
            ),
            SvgPicture.asset(
              'assetes/svgimages/linkedin.svg',
              height: 50,
              width: 50,
            )
          ]),

      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     buildSocialIcon(FontAwesomeIcons.facebook),
      //     SizedBox(width: 15),
      //     buildSocialIcon(FontAwesomeIcons.linkedin),
      //     SizedBox(width: 15),
      //     buildSocialIcon(FontAwesomeIcons.googlePlus),
      //     SizedBox(width: 15),
      //     buildSocialIcon(FontAwesomeIcons.twitter),
      //   ],
      // ),
    );
  }
}

//   buildSocialIcon(IconData icon) => CircleAvatar(
//         radius: 25,
//         child: Material(
//           shape: CircleBorder(),
//           clipBehavior: Clip.hardEdge,
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: () {},
//             child: Center(
//               child: Icon(icon, size: 32),
//             ),
//           ),
//         ),
//       );

