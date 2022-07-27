import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContainerBoxes(),
    debugShowCheckedModeBanner: false,
  ));
}

class ContainerBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          Container(
            color: Colors.red[700],
            height: 60,
            width: 500,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Container(
              //color: Colors.white,
              height: 130,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Container(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/3609704/pexels-photo-3609704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 4)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(
                          "sammunati bachat khata".toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: Row(
                            children: [
                              Text(
                                'NPR.',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                              ),
                              Text(
                                ' 1,0000.00',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red[700]),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.blue[300],
                                size: 17,
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text(
                            "65434638746265438563",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(200, 255, 10, 300),
                            radius: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],

    );
  }
}
