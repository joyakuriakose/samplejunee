import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 290,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.pexels.com/photos/1743231/pexels-photo-1743231.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "DETAIL",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 300, top: 130),
                child: Text(
                  "Crowne Plaza\nKochi, Kerala",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              //SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: Colors.grey,
                          onPrimary: Colors.white),
                      onPressed: () {},
                      child: const Text(
                        '8.4/85 reviews',
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
