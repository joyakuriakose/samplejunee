import 'package:flutter/material.dart';

class ExpaandedWidd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Expanded Widget",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                // height: 90,
                // width: 90,
                color: Colors.pink,
                child: const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.teal,
                child: const Text(
                  "About",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.black,
                child: const Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.pink,
                  child: const Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.teal,
                  child: const Text(
                    "About",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.black,
                child: const Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.amber,
                  child: const Text(
                    "1",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: const Text(
                  "2",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.amber,
                  child: const Text(
                    "3",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: Image.asset("assetes/images/dalia.webp"),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.brown,
                child: const Text(
                  "car",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.green,
                child: const Text(
                  "bike",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
