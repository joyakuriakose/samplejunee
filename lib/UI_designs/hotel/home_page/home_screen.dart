import 'package:flutter/material.dart';
import 'package:samplejunee/UI_designs/hotel/home_page/components/appbarsliver.dart';
import 'package:samplejunee/UI_designs/hotel/home_page/components/containerlist.dart';
import 'components/appbarsliver.dart';
import 'components/detailsview.dart';

void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  static final images = ['room1', 'room2', 'room3', 'room4'];
  static final ratings = [5.0, 4.0, 3.0, 2.0];
  static final reviews = ['100', '200', '300', '400'];
  static final prices = ['180', '200', '450', '500'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            HotelAppBar(),
            SliverList(
                delegate: SliverChildListDelegate([
              ThreeContainers(),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  itemCount: images.length,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        print('tapped');
                      },
                      child: DetailsView(
                        image: images[index],
                        rating: ratings[index],
                        review: reviews[index],
                        price: prices[index],
                      ),
                    );
                  })
            ]))
          ],
        ),
      ),
    );
  }
}
