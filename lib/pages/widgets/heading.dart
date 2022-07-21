import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;

  const Heading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(14),
        child: Text(title,
            style: const TextStyle(
                fontSize: 21,
                color: Color(0xffdaa520),
                fontWeight: FontWeight.bold)));
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading({Key? key, required this.title, required this.button})
      : super(key: key);

  final String title;
  final String button;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      leading: Container(
        width: 4,
        height: 24,
        decoration: BoxDecoration(
          color: const Color(
            0xffdaa520,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      minLeadingWidth: 0,
      trailing: TextButton(
          style: TextButton.styleFrom(
              surfaceTintColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              onSurface: Colors.transparent),
          onPressed: () {},
          child: Text(
            button,
            style: const TextStyle(fontSize: 14, color: Colors.blue),
          )),
      contentPadding: const EdgeInsets.only(left: 14, right: 4),
    );
  }
}
