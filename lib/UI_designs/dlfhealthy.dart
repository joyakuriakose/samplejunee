import 'package:flutter/material.dart';

class Healthy extends StatefulWidget {
  @override
  _HealthyState createState() => _HealthyState();
}

class _HealthyState extends State<Healthy> {
  List namess = ["apple", 'Orange', 'Grape', 'Banana', 'Tomato', 'Pinaeple'];

  List<String> listImages = [
    "https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=468&q=80",
    "https://images.unsplash.com/photo-1545310834-cd6a8a0884b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1470107355970-2ace9f20ab15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1526336179256-1347bdb255ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://images.unsplash.com/photo-1532433364291-dea3cc945cbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1550103685-da83caf1f0c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'DLF Phase1, Gurgaon',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.all(14.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1494137269338-d36b0f687715?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  // margin: EdgeInsets.all(2),
                  // padding: EdgeInsets.all(5),
                  // decoration: BoxDecoration(
                  // ),
                  width: 500,
                  height: 35,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.search,
                          color: Colors.pink,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Search for Products and Ingrediants",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 210,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  // color: Colors.green[300],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 3, 132, 93),
                      Color.fromARGB(255, 3, 132, 93).withOpacity(0.8)
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Up to 25% off on\n healthy teas",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "This everyday essential has\n Omega-3 fatty acis with a\n special",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15, top: 35),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Text('Explore more'),
                          label: const Icon(Icons.arrow_forward),
                        )),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 3),
                itemBuilder: (ctx, index) {
                  return Material(
                    borderRadius: BorderRadius.circular(15),
                    elevation: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.network(listImages[index],
                                  fit: BoxFit.cover),

                              // DecorationImage(
                              //   fit: BoxFit.fitHeight,
                              //   image: AssetImage('assets/images/candy.jpg'),
                              // ),
                            ),
                          ),
                          Text(
                            namess[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
