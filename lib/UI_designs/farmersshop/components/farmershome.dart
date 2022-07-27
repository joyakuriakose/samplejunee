import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samplejunee/UI_designs/farmersshop/components/iconsfileview.dart';
import 'package:samplejunee/UI_designs/farmersshop/components/itemsview.dart';
import 'package:samplejunee/UI_designs/farmersshop/components/tabbararea.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmers(),
  ));
}

class Farmers extends StatefulWidget {
  @override
  _FarmersState createState() => _FarmersState();
}

class _FarmersState extends State<Farmers> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            // expandedHeight: 0,
            floating: false,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        size: 18,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('Kochi'),
                      Icon(
                        Icons.arrow_downward_outlined,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
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
          // SizedBox(height: 15),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TabBarArea(),
            ),
          ),
          SliverToBoxAdapter(
            // child: Container(
            //   height: 200,
            child: Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/10265376/pexels-photo-10265376.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 500,
                  // height: 200,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "YOU ARE OUR APPY-LY",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        // SizedBox(height: 2),
                        Text(
                          "EVER AFTER",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          "Hi, welcome to this awesome application",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        SizedBox(height: 5),
                        TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.green[700],
                                backgroundColor: Colors.yellow,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            onPressed: () {},
                            child: Text("ORDERED NOW"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 5),
          SliverToBoxAdapter(
            child: IconsFileView(),
          ),

          // SizedBox(height: 5),
          SliverToBoxAdapter(
            child: Container(
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop By Category",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    ItemsView(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
