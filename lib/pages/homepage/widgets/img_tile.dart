import 'package:flutter/material.dart';

class ImgTile extends StatelessWidget {
  const ImgTile({Key? key, required this.splitThree}) : super(key: key);
  final bool splitThree;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: screenWidth * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: screenHeight * 0.23,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "assets/images/drteaser.jpg",
                      fit: BoxFit.cover,
                      height: screenHeight * 0.23,
                    )),
                    const SizedBox(
                      width: 3,
                    ),
                    Expanded(
                        child: Image.asset("assets/images/drteaser.jpg",
                            height: screenHeight * 0.23, fit: BoxFit.cover)),
                    SizedBox(
                      width: splitThree ? 3 : 0,
                    ),
                    splitThree
                        ? Expanded(
                            child: Image.asset("assets/images/drteaser.jpg",
                                height: screenHeight * 0.23, fit: BoxFit.cover))
                        : const SizedBox.shrink()
                  ],
                )),
            const SizedBox(
              height: 6,
            ),
            Expanded(
                child: Wrap(children: const [
              Text(
                "Holly Romance: Our Future Cover",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 13),
                textAlign: TextAlign.start,
              ),
            ]))
          ],
        ),
      ),
    );
  }
}

class VideoTile extends StatelessWidget {
  const VideoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.23,
        child: Image.asset(
          "assets/images/ironman.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
