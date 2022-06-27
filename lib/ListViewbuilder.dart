import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  final mylist = List.generate(50, (index) => 'product $index');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("ListViewBuilder")),
        body: ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                // child: ListTile(
                //   title: Text("This is a ListTile $index"),
                // ),
                child: ExpansionTile(
                  title: Text("This is a ListTile $index"),
                ),
              );
            }),
      ),
    );
  }
}
