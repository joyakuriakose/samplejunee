import 'package:flutter/material.dart';

class Hotel {
  String? imageUrl;
  String? title;
  String? description;
  int? price;
  double? rating;

  Hotel({this.description, this.imageUrl, this.price, this.rating, this.title});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assetes/images/room1.jpg',
    title: 'Crown Plazza',
    description: 'A Five Star Hotel in Kochi',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assetes/images/room2.jpg',
    title: 'Hotel Merriot',
    description: 'A five star Hotelin Kochi',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assetes/images/room3.jpg',
    title: 'HolyDayIn',
    description: 'A five Star hotel in Kochi',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assetes/images/room4.jpg',
    title: 'Marriot',
    description: 'A Five star hotel in Kochi',
    price: 180,
    rating: 4.5,
  )
];

class HorizontalView extends StatefulWidget {
  @override
  _HorizontalView createState() => _HorizontalView();
}

class _HorizontalView extends State<HorizontalView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Popular Hotel',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                // padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 10.0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage(hotels[index].imageUrl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            hotels[index].title!,
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            hotels[index].description!,
                            style: const TextStyle(
                                fontSize: 13.0, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '\$${hotels[index].price} / night',
                                style: const TextStyle(color: Colors.blue),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '${hotels[index].rating}',
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 16.0,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
