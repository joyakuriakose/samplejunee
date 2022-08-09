import 'package:flutter/material.dart';
import 'package:samplejunee/cloneapplications/netflixcloneui/screens/bottomnavscree.dart';

class NetFlixHome extends StatefulWidget {
  @override
  _NetFlixHomeState createState() => _NetFlixHomeState();
}

class _NetFlixHomeState extends State<NetFlixHome> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assetes/images/sintel.png"),
            fit: BoxFit.cover, color: Colors.black.withOpacity(1.0),
            colorBlendMode: BlendMode.darken,
          ),
        ],
      ),
    );
  }
}
