import 'package:flutter/material.dart';

class MyBottomPage extends StatefulWidget {
  const MyBottomPage({Key? key}) : super(key: key);

  @override
  _MyBottomPageState createState()
  {
    return _MyBottomPageState();
  }
}

class _MyBottomPageState extends State<MyBottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Bottom Sheet"),
      ),
      body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showModalBottomSheet();
                },
                child: const Text("Show Bottom Sheet"),
              )
            ],
          )
      ),
    );
  }
  _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          width: double.infinity,
          color: Colors.cyan.shade200,
          alignment: Alignment.center,
          child: ElevatedButton(
            child: const Text("Close Bottom Sheet"),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}