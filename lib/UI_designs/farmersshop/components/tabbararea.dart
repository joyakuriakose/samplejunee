import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TabBarArea(),
  ));
}

class TabBarArea extends StatelessWidget {
  const TabBarArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabArea(
              tabName: 'vegetables',
            ),
            TabArea(
              tabName: 'Fruits',
            ),
            TabArea(
              tabName: 'exotic',
            ),
            TabArea(
              tabName: 'freshcuts',
            )
          ],
        ),
      ),
    );
  }
}

class TabArea extends StatelessWidget {
  TabArea({Key? key, required this.tabName}) : super(key: key);
  String tabName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          color: Colors.greenAccent[100],
          border: Border.all(
            color: Colors.green,
            width: 1,
          ),

          // border: Border.all(color: Colors.green[100]),
          // color: Colors.green,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Text(
          tabName.toUpperCase(),
          style: const TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 11, 184, 17),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
