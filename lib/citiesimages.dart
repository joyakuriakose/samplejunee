import 'package:flutter/material.dart';

class CitesImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text(
            "Cites Around World",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        body: ListView(
          children: const [
            Card(
              shadowColor: Colors.yellow,
              elevation: 10,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15)),
              child: ListTile(
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
          ],
        ),
      ),
    );
  }
}
