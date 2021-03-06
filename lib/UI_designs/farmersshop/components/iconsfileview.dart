import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsFileView extends StatelessWidget {
  const IconsFileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black.withOpacity(0.3)),
          color: Colors.grey[100],
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconsView(
                image: 'assetes/svgimages/timer.svg',
                text: '30 mins policy',
              ),
              IconsView(
                image: 'assetes/svgimages/phone.svg',
                text: 'traceability',
              ),
              IconsView(
                image: 'assetes/svgimages/engineer.svg',
                text: 'local sourcing',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconsView extends StatelessWidget {
  IconsView({Key? key, required this.image, required this.text})
      : super(key: key);

  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 40,
                width: 50,
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.fitHeight,
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              text.toUpperCase(),
              style: const TextStyle(fontSize: 11, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
