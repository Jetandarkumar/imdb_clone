import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({Key? key}) : super(key: key);
  final double radius = 8.0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff202020),
        borderRadius: BorderRadius.circular(radius),
      ),
      height: screenHeight * 0.42,
      width: screenWidth * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius)),
              child: Image.asset(
                "assets/images/drteaser.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 14,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("6.8",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text(
                          "Chaudhry and the sons ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          "2022 12A 1h 58m",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 9,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Expanded(
                        flex: 2,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)),
                                side: const BorderSide(
                                    width: .5, color: Colors.grey)),
                            child: const Text(
                              "+Watchlist",
                              style: TextStyle(
                                  fontSize: 12,
                                  /* letterSpacing: .5, */
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
}
