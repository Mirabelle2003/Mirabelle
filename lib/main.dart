import 'package:flutter/material.dart';
import 'package:mon_projet/jeu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0XFF4584FF),
      ),
      home: const JeuDesScreen(),
    );
  }
}
