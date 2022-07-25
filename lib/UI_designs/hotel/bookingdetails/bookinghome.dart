import 'package:flutter/material.dart';
import 'package:samplejunee/UI_designs/hotel/bookingdetails/components/horizontalview.dart';
import 'package:samplejunee/UI_designs/hotel/bookingdetails/components/verticalview.dart';

import 'components/searchview.dart';

void main(){
  runApp(MaterialApp(
    home: BookingHome(),
  ));
}



class BookingHome extends StatelessWidget{
  static final images = ['room1', 'room2', 'room3', 'room4'];
  static final prices = ['180', '200', '450', '500'];
  static final titles = [
    'Crown Plaza',
    'Hotel Marriot',
    'Presidency',
    'Columbus',

  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SearchView(),
              HorizontalView(),
              VerticalView(),
              ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: images.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return VertivalViewCard(
                      image: images[index],
                      rate: prices[index],
                      name: titles[index],
                    );
                  }),
            ],
          )
        ],
      ),
    );

  }

}