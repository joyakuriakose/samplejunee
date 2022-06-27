import 'package:flutter/material.dart';

class ListSeparated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mylist = List.generate(50, (index) => 'product $index');
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("ListViewSeparated"),
          ),
          body: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text("This is a ListTile $index"),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                if (index % 5 == 0) {
                  return Container(
                    child: const Center(
                      child: Text("This is a separator"),
                    ),
                  );
                }
                return const Divider();
              },
              itemCount: mylist.length)),
    );
  }
}
