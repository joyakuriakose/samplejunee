import 'package:flutter/material.dart';

class Orderrdetailss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQuery
        .of(context)
        .size
        .height;
    MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Order Details",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "#7754978665",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "27 may 2020",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "Delevered",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delevered to",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "1633 Hampton Meadows, Lexington",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Payment Method",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Google Pay",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(thickness: 2),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text(
                          'Ocean Reach oatmeal Stout x2',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("6 Pack"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "56.06",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text(
                          'Stone Peak Conditions x1',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Single"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "56.06",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          'Budweiser x1',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("Single"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "56.06",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 2),
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        enabled: false,
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Item Total"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "56.06",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        enabled: false,
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Delivery Charges"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        enabled: false,
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Donate to Needy"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        visualDensity: const VisualDensity(vertical: -4),
                        dense: true,
                        horizontalTitleGap: 0,
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Delivery Charges"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.currency_rupee,
                                color: Colors.red[900], size: 15),
                            Text(
                              "60.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 2),
                      SizedBox(height: 10),
                      Container(
                        width: 450,
                        height: 50,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 5),
                              child: Icon(Icons.question_mark_rounded,
                                  color: Colors.red),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Need Support?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Chat with us",
                                  style: TextStyle(color: Colors.grey[800]),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 290),
                              child: Text("Chat",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red, fontSize: 18)),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(height: 150),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.yellow[700],
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fixedSize: const Size(450, 45)),
                          child: const Text('Re-order',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
