import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    Key? key,
    required this.image,
    required this.rating,
    required this.review,
    required this.price,
  }) : super(key: key);
  final String image;

  final double rating;
  final String review;
  final String price;

  @override
  Widget build(BuildContext context) {

     // var room = DetailsView[index % images.length];
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(image),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 400,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 40,
                    color: Colors.grey[200],
                    child: Text(
                      '\$$price',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  left: 400,
                  child: IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Awesome room near kakkanad',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'kakkanad, Kochi',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0, top: 10),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 1,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '($review Reviews)',
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
