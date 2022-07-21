import 'package:flutter/material.dart';

class MovieIntro extends StatelessWidget {
  const MovieIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.4,
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red,
              height: screenHeight * 0.3,
            ),
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(left: 100, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "The Lord of the rings",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Main Teaser",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.white70,
                        fontWeight: FontWeight.w200),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            left: 8,
            bottom: 0,
            child: Image.asset(
              "assets/images/drteaser.jpg",
              height: 120,
              fit: BoxFit.cover,
              width: 84,
            ))
      ]),
    );
  }
}
