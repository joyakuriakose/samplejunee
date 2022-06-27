import 'package:flutter/material.dart';

class Expaandable extends StatefulWidget {
  // final mylistt = List.generate(50, (index) => 'product $index');

  @override
  _Expaandablewid createState() => _Expaandablewid();
}

class _Expaandablewid extends State<Expaandable> {
  List<String> mylistt = [
    'Jan',
    'Feb',
    'March',
    'April',
    'May',
    'June',
    'July'
  ];
  List<String> weeks = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: mylistt.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ExpansionTile(
                        title: Text(
                          mylistt[index].toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Container(
                            height: 150,
                            child: ListView.builder(
                                itemCount: weeks.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      weeks[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.pink),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
