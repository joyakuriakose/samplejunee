import 'package:flutter/material.dart';

class BottomSheets extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Bottom Sheet'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal),
              onPressed: () {
                bottomsheet(context);
              },
              child: const Text('Show Model Bottom Sheet')),
        ),
      ),
    );
  }

  bottomsheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        context: context,
        builder: (ctx) {
          return Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            height: 200,
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
                ListTile(
                  leading: Icon(Icons.copy),
                  title: Text('Copy link'),
                ),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit'),
                )
              ],
            ),
          );
        });
  }
}