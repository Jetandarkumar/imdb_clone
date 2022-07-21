import 'package:flutter/material.dart';
import 'package:imdb_clone/pages/homepage/home_page.dart';

void main() => runApp(MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
