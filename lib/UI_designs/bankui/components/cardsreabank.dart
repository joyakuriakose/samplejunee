import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// void main() {
//   runApp(MaterialApp(
//     home: CardsAreaBank(),
//   ));
// }

class CardsAreaBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 100,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 3),
        children: [
          BankCard(
            img: SvgPicture.asset(
              'assetes/svgimages/account.svg',
              color: Colors.red,
              height: 50,
              width: 50,
            ),
            text: 'My account',
          ),
          BankCard(
            img: Image.asset(
              'assetes/pngimages/esewa.png',
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            text: 'Load eSewa',
          ),
          BankCard(
            img: SvgPicture.asset(
              'assetes/svgimages/payment.svg',
              color: Colors.red,
              height: 50,
              width: 50,
            ),
            text: 'payment',
          ),
          BankCard(
            img: SvgPicture.asset(
              'assetes/svgimages/fund_trnasfer2.svg',
              color: Colors.red,
              height: 50,
              width: 50,
            ),
            text: 'Fund transfer',
          ),
          BankCard(
            img: SvgPicture.asset(
              'assetes/svgimages/schedule_payment.svg',
              color: Colors.red,
              height: 40,
              width: 40,
            ),
            text: 'Schedule payment',
          ),
          const BankCard(
            img: Icon(
              Icons.qr_code_scanner,
              color: Colors.red,
              size: 50,
            ),
            text: 'Scan to pay',
          )
        ],
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);
  final String text;
  final Widget img;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img,
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
