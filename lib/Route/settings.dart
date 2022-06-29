import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // Text("Route Name: ${ModalRoute.of(context)?.settings.name}"),
            // const SizedBox(
            //   height: 30,
            // ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('registration');
                },
                child: const Text('Go to Registration')),
          ],
        ),
      ),
    );
  }
}
