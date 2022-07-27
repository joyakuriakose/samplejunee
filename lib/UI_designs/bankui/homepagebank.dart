import 'package:flutter/material.dart';
import 'package:samplejunee/Screen/homepage.dart';
import 'package:samplejunee/UI_designs/bankui/components/cardsreabank.dart';
import 'package:samplejunee/UI_designs/bankui/components/containerboxes.dart';
import 'package:samplejunee/UI_designs/bankui/components/lasttransactions.dart';

import 'components/appbararea.dart';

void main() {
  runApp(MaterialApp(
    home: HomePageBank(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePageBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AppBarArea(),
            ContainerBoxes(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.group_work,
                    color: Colors.red[700],
                  ),
                  SizedBox(width: 20),
                  Text(
                    "would you like to?".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CardsAreaBank(),
            LastTransactions(),
          ],
        ),
      ),
    );
  }
}
