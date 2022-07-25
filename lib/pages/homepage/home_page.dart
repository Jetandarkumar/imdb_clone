import 'package:flutter/material.dart';
import 'package:imdb_clone/pages/homepage/widgets/featured_today.dart';
import 'package:imdb_clone/pages/homepage/widgets/filter_row.dart';
import 'package:imdb_clone/pages/homepage/widgets/movie_intro.dart';
import 'package:imdb_clone/pages/homepage/widgets/movie_tile.dart';
import 'package:imdb_clone/pages/widgets/heading.dart';
// ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff141414),
      body: ListView(
        children: [
          const MovieIntro(),
          const Heading(title: "Featured Today"),
          const FeaturedTodayListView(),
          const Heading(title: "Recently Viewed"),
          Container(
              height: screenHeight * 0.75,
              color: const Color(0xff1A1A1A),
              child: Column(
                  /* crossAxisAlignment: CrossAxisAlignment.stretch, */
                  children: [
                    const SubHeading(
                        title: "From you watchList", button: "SEE ALL"),
                    const SubTitleWid(
                        text:
                            "Shows and movies available to watch from your playlist "),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey, width: .5)),
                        child: IntrinsicHeight(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                FilterWidTile(text: "thrill"),
                                SizedBox(
                                  width: .5,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.grey)),
                                ),
                                FilterWidTile(text: "action"),
                                SizedBox(
                                  width: .5,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.grey)),
                                ),
                                FilterWidTile(text: "Suspense")
                              ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: screenHeight * 0.42,
                      padding: const EdgeInsets.only(left: 14),
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 8,
                              ),
                          itemBuilder: (context, index) => const MovieTile()),
                    )
                  ])),
          const Heading(title: "Recently Viewed"),
        ],
      ),
    );
  }
}
