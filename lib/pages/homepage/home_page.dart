import 'package:flutter/material.dart';
import 'package:imdb_clone/pages/homepage/widgets/featured_today.dart';
import 'package:imdb_clone/pages/homepage/widgets/movie_intro.dart';
import 'package:imdb_clone/pages/homepage/widgets/movie_tile.dart';
import 'package:imdb_clone/pages/widgets/heading.dart';

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
                    Container(
                      height: screenHeight * 0.42,
                      padding: const EdgeInsets.only(left: 14),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          MovieTile(),
                          SizedBox(
                            width: 8,
                          ),
                          MovieTile(),
                          SizedBox(
                            width: 8,
                          ),
                          MovieTile(),
                        ],
                      ),
                    )
                    /* Expanded( */
                    /*   child: ListView.builder( */
                    /*       scrollDirection: Axis.horizontal, */
                    /*       itemCount: 3, */
                    /*       itemBuilder: (context, index) { */
                    /*         return const MovieTile(); */
                    /*       }), */
                    /* ) */
                  ]))
        ],
      ),
    );
  }
}
