import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Custom TabBar"),
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              margin: EdgeInsets.only(top: 10, left: 90, right: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  Colors.grey[300],
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.greenAccent,
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                splashBorderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                indicator: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(20),
                ),
                tabs: const [
                  Tab(
                    text: 'Calls',
                  ),
                  Tab(text: 'Chats'),
                  Tab(
                    text: 'Status',
                  ),
                  Tab(
                    text: 'Message',
                  ),
                  Tab(
                    text: 'Gallery',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'Calls',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Chat',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Status',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Message',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Gallery',
                      style: TextStyle(fontSize: 30),
                    ),
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
