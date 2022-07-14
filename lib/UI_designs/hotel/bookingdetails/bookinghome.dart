import 'package:flutter/material.dart';

import 'components/searchview.dart';

class BookingHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SearchView(),
            ],
          )
        ],
      ),
    );

  }

}