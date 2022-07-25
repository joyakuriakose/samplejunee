import 'package:flutter/material.dart';
import 'package:samplejunee/cloneapplications/youtubeclone/components/youtubehomescreen.dart';
import 'package:samplejunee/cloneapplications/youtubeclone/widgets/customsliverappbar.dart';
import 'package:samplejunee/cloneapplications/youtubeclone/youtubehome.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  final _components = [
    CustomSliverAppBar(),
    Scaffold(
      body: Center(
        child: Text('Explore'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Add'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Subscriptions'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Library'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Stack(children: [_components.asMap().map((i, component) =>
      //     MapEntry(i, Offstage(offstage: _selectedIndex !=i,
      //     child: component),
      //     )
      //     .value.toList(),
      // ),
      // ]
      // ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (i) => setState(() => _selectedIndex = i),
      selectedFontSize: 10.0,
      unselectedFontSize: 10.0,
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined),
            activeIcon: Icon(Icons.add_circle),
            label: 'Add'),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subscriptions'),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Library'),
      ],
    ),);
  }
}
