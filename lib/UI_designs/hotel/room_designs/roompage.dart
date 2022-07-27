import 'package:flutter/material.dart';

import 'components/imageview.dart';
import 'components/buttondescrip.dart';
import 'components/ratingview.dart';

void main(){
  runApp(MaterialApp(
    home: RoomPage(),
  ));
}

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Column(
            children: [
              ImageView(),
              RatingView(),
              BottonDescrip(),
            ],
          ),
        ],
      )




    );
  }
}
