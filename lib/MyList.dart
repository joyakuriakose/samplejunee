import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal[100],
          appBar: AppBar(
            title: const Text("Film Actors ListView"),
            actions: [IconButton(onPressed: () {},
        icon: Icon(Icons.home),
            ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),],
          ),
          body: ListView(
            children: [
              Card(
                shadowColor: Colors.yellow,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  title: Text("Mammootty"),
                  subtitle: Text("Mob: 5734534753"),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg"),
                      backgroundColor: Colors.tealAccent),
                  trailing: Icon(
                    Icons.account_balance_sharp,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.yellow,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  title: Text("Vijay"),
                  subtitle: Text("Mob:73463784637"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://im.indiatimes.in/content/itimes/photo/2015/Jul/16/1437058328-film-actor-vijay.jpg"),
                    backgroundColor: Colors.amber,
                    // child: Icon(
                    //   Icons.ac_unit_outlined,
                    //   color: Colors.yellow,
                    // ),
                  ),
                  trailing: Icon(
                    Icons.print,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.yellow,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  title: Text("Mohanlal"),
                  subtitle: Text("Mob 4847788888"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg"),
                    backgroundColor: Colors.amber,
                  ),
                  trailing: Icon(
                    Icons.details,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.amber,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  title: Text("Suresh Gopi"),
                  subtitle: Text("Mob: 73453478563"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://im.indiatimes.in/content/itimes/photo/2015/Jul/16/1437058328-film-actor-vijay.jpg"),
                    backgroundColor: Colors.amber,
                  ),
                  trailing: Icon(Icons.add_ic_call_sharp, color: Colors.green),
                ),
              ),
              Card(
                shadowColor: Colors.teal,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  title: Text("Kunchacko"),
                  subtitle: Text("Mob: 374634767667"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg"),
                    backgroundColor: Colors.black,
                  ),
                  trailing: Icon(Icons.add_ic_call, color: Colors.red),
                ),
              ),
            ],
          )),
    );
  }
}
