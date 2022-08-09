import 'package:flutter/material.dart';
import 'package:samplejunee/cloneapplications/youtubeclone/widgets/customsliverappbar.dart';

import '../constants.dart';
import '../widgets/videocard.dart';

class HomeScreenyt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
              ),
            ),
          ),
        ],
      ),

    );
  }

}