import 'package:flutter/material.dart';

class Farmers extends StatefulWidget {
  final List<Map<String, dynamic>> gridMap = [
    {
      'title': 'Vegitables',
      'images':
          'https://images.pexels.com/photos/2291070/pexels-photo-2291070.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'Fruits',
      'images':
          'https://images.pexels.com/photos/3085062/pexels-photo-3085062.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'Exotic',
      'images':
          'https://images.pexels.com/photos/7494449/pexels-photo-7494449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'Fresh Cuts',
      'images':
          'https://images.pexels.com/photos/7817325/pexels-photo-7817325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'Nutrition Chargers',
      'images':
          'https://images.pexels.com/photos/7474082/pexels-photo-7474082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'Packed Minerals',
      'images':
          'https://images.pexels.com/photos/8679553/pexels-photo-8679553.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
  ];

  @override
  _FarmersState createState() => _FarmersState();
}

class _FarmersState extends State<Farmers> {
  get images => null;

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
              IconButton(
                icon: const Icon(Icons.place),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Kochi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                        ),

                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                           // decoration: BoxDecoration(),

                            color: Colors.green,


                          );
                        },
                      ),
                    )
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
