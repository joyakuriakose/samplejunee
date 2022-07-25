import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samplejunee/UI_designs/farmersshop/components/itemsview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmers(),
  ));
}

class Farmers extends StatefulWidget {
  // final List<Map<String, String>> gridMap = [
  //   {
  //     'title': 'Vegitables',
  //     'images':
  //         'https://images.pexels.com/photos/2291070/pexels-photo-2291070.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  //   },
  //   {
  //     'title': 'Fruits',
  //     'images':
  //         'https://images.pexels.com/photos/3085062/pexels-photo-3085062.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  //   },
  //   {
  //     'title': 'Exotic',
  //     'images':
  //         'https://images.pexels.com/photos/7494449/pexels-photo-7494449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  //   },
  //   {
  //     'title': 'Fresh Cuts',
  //     'images':
  //         'https://images.pexels.com/photos/7817325/pexels-photo-7817325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  //   },
  //   {
  //     'title': 'Nutrition Chargers',
  //     'images':
  //         'https://images.pexels.com/photos/7474082/pexels-photo-7474082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  //   },
  //   {
  //     'title': 'Packed Minerals',
  //     'images':
  //         'https://images.pexels.com/photos/8679553/pexels-photo-8679553.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  //   },
  // ];

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
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTabController(
                      length: 4,
                      child: TabBar(
                        labelColor: Colors.green[800],
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        isScrollable: true,
                        tabs: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent[100],
                              onPrimary: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: BorderSide(color: Colors.greenAccent),
                              ),
                            ),
                            child: Tab(text: "VEGETABLES"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent[100],
                              onPrimary: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: BorderSide(color: Colors.greenAccent),
                              ),
                            ),
                            child: Tab(text: "FRUITS"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent[100],
                              onPrimary: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: BorderSide(color: Colors.greenAccent),
                              ),
                            ),
                            child: Tab(text: "EXOTIC"),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent[100],
                              onPrimary: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: BorderSide(color: Colors.greenAccent),
                              ),
                            ),
                            child: Tab(text: "FRESH CUTS"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Container(
                    width: 500,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              child: Column(
                            children: [
                              Icon(Icons.lock_clock, size: 35),
                              SizedBox(height: 5),
                              Text("30 MINS POLICY"),
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              Icon(Icons.mobile_friendly_sharp, size: 35),
                              SizedBox(height: 5),
                              Text("TRACAEBILITY"),
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              Icon(Icons.person, size: 35),
                              SizedBox(height: 5),
                              Text("LOCAL SOURCING"),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
