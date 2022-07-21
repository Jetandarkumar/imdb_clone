import 'package:flutter/material.dart';
import 'package:imdb_clone/pages/homepage/widgets/img_tile.dart';

class FeaturedTodayListView extends StatelessWidget {
  const FeaturedTodayListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: screenHeight * 0.32,
      color: const Color(0xff1A1A1A),
      child: ListView(scrollDirection: Axis.horizontal, children: const [
        SizedBox(
          width: 14,
        ),
        ImgTile(splitThree: true),
        SizedBox(
          width: 14,
        ),
        ImgTile(
          splitThree: false,
        ),
        SizedBox(
          width: 14,
        ),
        VideoTile()
      ]),
    );
  }
}
