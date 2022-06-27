import 'package:flutter/material.dart';
import 'Screen/gallery.dart';
import 'Screen/homepage.dart';
import 'Screen/import.dart';
import 'Screen/slideshow.dart';

class CustomApb extends StatefulWidget {
  const CustomApb({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CustomApbState();
}

class CustomApbState extends State {
  int selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const Icon(
      Icons.call,
      size: 150,
    ),
    const Icon(
      Icons.camera,
      size: 150,
    ),
    const Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Added
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          // automaticallyImplyLeading: true,
          title: const Text(
            "Navigation Drawer",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),

          // leading: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.menu, color: Colors.white),
          // ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white)),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.account_box_outlined),
                text: "Account",
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: "Alarm",
              )
            ],
          ),
        ),

        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("Joya Ajish"),
                  accountEmail: const Text("joyakuriakose@gmail.com"),
                  currentAccountPicture: GestureDetector(
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn4.iconfinder.com/data/icons/peppyicons-rounded/512/user3-512.png"),
                      ),
                      onTap: () => print("Current User")),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assetes/images/garden.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListTile(
                    title: const Text(
                      "Home",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const Homepage(),
                      ));
                    }),
                ListTile(
                    title: const Text(
                      "Import",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    leading: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ImportExtendedGrid(),
                      ));
                    }),
                ListTile(
                    title: const Text(
                      'Gallery',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    leading: Icon(Icons.image),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Staggeredd(),
                      ));
                    }),
                ListTile(
                    title: const Text(
                      "Slideshow",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    leading: const Icon(Icons.slideshow),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MySlide("slide show"),
                      ));
                    }),
                const ListTile(
                  title: Text(
                    "Tools",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  leading: Icon(Icons.how_to_reg_rounded),
                ),
                Divider(thickness: 3),
                const ListTile(
                  title: Text(
                    "Communicate",
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Share",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  leading: Icon(Icons.share),
                ),
                const ListTile(
                  title: Text(
                    "Send",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  leading: Icon(Icons.send),
                ),
                const Divider(thickness: 3),
                ListTile(
                  title: const Text(
                    "Exit",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Row(
                        children: [
                          Image.network(
                            "https://coneyislandpark.com/wp-content/uploads/2020/10/AdobeStock_337038526-scaled.jpeg",
                            width: 15,
                            height: 15,
                          ),
                          const Text('Exit..?'),
                        ],
                      ),
                      content: const Text('Do you want to Exit?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Exit'),
                          child: Text('Exit'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Icon(Icons.home),
            ),
            Center(
              child: Icon(Icons.account_circle),
            ),
            Center(
              child: Icon(Icons.alarm),
            ),
          ],
        ),
        // Center(
        //   child: _pages.elementAt(selectedIndex),
        //
        // ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          backgroundColor: Colors.tealAccent,
        ),
      ),
    );
  }
}
