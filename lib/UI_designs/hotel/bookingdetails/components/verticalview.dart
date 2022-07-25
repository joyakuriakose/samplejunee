import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: VerticalView(),
  ));
}

class VerticalView extends StatefulWidget {
  const VerticalView({Key? key}) : super(key: key);

  @override
  _VerticalView createState() => _VerticalView();
}

class _VerticalView extends State<VerticalView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hotel Packages',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              Text(
                'view all',
                style: TextStyle(fontSize: 18.0, color: Colors.blue),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class VertivalViewCard extends StatelessWidget {
  const VertivalViewCard({
    Key? key,
    required this.image,
    required this.name,
    required this.rate,
  }) : super(key: key);
  final String image;
  final String name;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assetes/images/$image.jpg')),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                            const Text(
                              'A five star hotel in kochi',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text(
                              '\$$rate / night',
                              style: const TextStyle(color: Colors.blue),
                            ),
                            Wrap(
                              spacing: 5,
                              alignment: WrapAlignment.center,
                              direction: Axis.horizontal,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.0, right: 3),
                                  child: Icon(
                                    FontAwesomeIcons.car,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                                Icon(
                                  Icons.radio,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  Icons.wine_bar,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  Icons.wifi,
                                  color: Colors.blue,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 0,
                        child: Material(
                          elevation: 10,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            height: 40,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Book',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
