import 'package:flutter/material.dart';

class BottonDescrip extends StatelessWidget {
  const BottonDescrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 50),
                primary: Colors.purple,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                )),
            onPressed: () {},
            child: const Text("Book Now"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Text("Description".toUpperCase(), style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.0
          ),
          ),
        ),
        const SizedBox(height: 10.0),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Crowne Plaza Kochi, Kerala, is an ideal staying place for"
                " both the professional and leisure travelers from "
                "across the world. It is placed amidst exotic"
                " surroundings that comprised of alluring attractions "
                "of the city. The hotel is blessed with excellent "
                "accommodation arrangements in the "
                "presence of fully furnished rooms and suites. "
                "The staying facilities are majestically "
                "complimented by the traditional Indian hospitality "
                "at this five-star property. Moreover, the extensive "
                "premises of the hotel consist of excellent "
                "arrangements for business and personal events.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14.0),
          ),
        ),
        const SizedBox(height: 10.0),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Crowne Plaza Kochi, Kerala",
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14.0),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: BottomNavigationBar(
            backgroundColor: Colors.white54,
            elevation: 0,
            selectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: "Favorites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        )
      ],
    );
  }
}
