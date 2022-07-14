import 'package:flutter/material.dart';

class HotelAppBar extends StatelessWidget {
  const HotelAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      leading: Icon(Icons.menu),
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_outline),
          onPressed: () {},
        ),
      ],
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Type your Location",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Kakkanad, kochi",
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(20),
                  //    ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: (BorderSide(color: Colors.blue)),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
