import 'package:flutter/material.dart';

class RatingView extends StatelessWidget {
  const RatingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    const Text.rich(
                      TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.location_on,
                          size: 16.0,
                          color: Colors.grey,
                        )),
                        TextSpan(text: "8 km to LuluMall")
                      ]),
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    )
                  ],
                ),
              ),
              Column(
                children: const <Widget>[
                  Text(
                    "\$ 200",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    "/per night",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
