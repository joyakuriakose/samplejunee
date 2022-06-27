import 'package:flutter/material.dart';
import 'package:samplejunee/customappbar.dart';
import 'package:samplejunee/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _BottomNavBar createState() => _BottomNavBar();
}

class _BottomNavBar extends State<Homepage> {
// class HomePage extends StatelessWidget {
//   final String pageTextChanged;
//
//   HomePage(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Page",
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        shrinkWrap: true,
        children: List.generate(5, (index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.gujarattourism.com/content/dam/gujrattourism/images/flora--fauna/butterfly-garden/Butterfly-Garden1.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
