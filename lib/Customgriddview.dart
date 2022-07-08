import 'package:flutter/material.dart';

class CustomGridd extends StatefulWidget {
  const CustomGridd({Key? key}) : super(key: key);

  @override
  _CustomGridState createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGridd> {

  List menuList = [
    _MenuItem(Icons.verified_user, 'My Profile'),
    _MenuItem(Icons.autorenew, 'Book a Cab'),
    _MenuItem(Icons.ac_unit, 'Booking Schedule'),
    _MenuItem(Icons.center_focus_strong, 'Track Your Cab'),
    _MenuItem(Icons.question_answer, 'Help & Feedback'),
    _MenuItem(Icons.phone, 'Call to Transport'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: GridView.builder(

          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

          itemBuilder: (context, position) {
            return Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  menuList[position].icon,
                                  size: 60,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                menuList[position].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )));
          },
          itemCount: menuList.length,
        ),
      ),
    );
  }
}

class _MenuItem {

  final IconData icon;
  final String title;

  _MenuItem(this.icon, this.title);
}