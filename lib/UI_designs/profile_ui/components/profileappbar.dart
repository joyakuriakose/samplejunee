import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assetes/svgimages/menu.svg',
                    color: Colors.black,
                    height: 10,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/6555076/pexels-photo-6555076.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  radius: 70,
                  backgroundColor: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7, color: Colors.white, spreadRadius: 12)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
