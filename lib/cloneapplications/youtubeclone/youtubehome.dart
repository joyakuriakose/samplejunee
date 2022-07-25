import 'package:flutter/material.dart';
import 'package:samplejunee/cloneapplications/youtubeclone/widgets/customsliverappbar.dart';

import 'components/navscreen.dart';
import 'components/youtubehomescreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Youtube Clone',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      // bottomNavigationBarTheme: selectedItemColor: Colors.white
    ),
    home: YouTubeHome(),
  ));
}

class YouTubeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavigationScreen(),
      body: CustomScrollView(
        slivers: [CustomSliverAppBar(),
        // SliverList(delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //   final video = videos[index];
        //   return VideoCard(video: video);
        // },
        // childCount: videos.length,
        //
        // ),
        // ),
        ],


      ),

      // bottomNavigationBar: NavigationScreen(),
    );
  }
}
