import 'package:flutter/material.dart';

class Farmers extends StatefulWidget {
  @override
  _FarmersState createState() => _FarmersState();
}

class _FarmersState extends State<Farmers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.place),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.arrow_downward_outlined),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for Vegetables, Fruits..',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),

          ),
          // DefaultTabController(
          //   length: 4,
          //   child: TabBar(
          //     indicator: BoxDecoration(
          //       color: Colors.green,
          //       border: Border.all(color: Colors.green),
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     tabs: [
          //       Tab(text: 'VEGETABLES'),
          //       Tab(text: 'FRUITS'),
          //       Tab(text: 'EXOTIC'),
          //       Tab(
          //         text: 'FRESH CUTS',
          //       ),
          //     ],
          //   ),
          // ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assetes/images/dalia.webp"),),
              ),
            ),


          // BottomNavigationBar(items: <BottomNavigationBarItem>[
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.shopping_cart),
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.account_circle_outlined),
          //   ),
          // ],
          //   backgroundColor: Colors.grey,
          // ),
        ],
      ),
    );
  }
}
