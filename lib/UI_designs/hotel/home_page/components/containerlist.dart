import 'package:flutter/material.dart';

class ThreeContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(


      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Containerss(
            color: Colors.pink,
            icon: Icons.bed,
            text: 'Hotel',
          ),

          Containerss(
              color: Colors.blue, icon: Icons.restaurant, text: 'Restaurant'),

          Containerss(
              color: Colors.orange, icon: Icons.local_cafe, text: 'Cafe')
        ],
      ),
    );
  }
}

class Containerss extends StatelessWidget {
  Containerss(
      {Key? key, required this.color, required this.icon, required this.text})
      : super(key: key);
  final String text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(

        height: 80,
        width: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
