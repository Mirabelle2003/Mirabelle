import 'dart:math';

import 'package:flutter/material.dart';

class JeuDesScreen extends StatefulWidget {
  const JeuDesScreen({Key? key}) : super(key: key);

  @override
  State<JeuDesScreen> createState() => _JeuDesScreenState();
}

class _JeuDesScreenState extends State<JeuDesScreen> {
  int leftNombre = 1;
  int rightNombre = 1;

  void ChangeFaceDes() {
    setState(() {
      leftNombre = Random().nextInt(6) + 1;
      rightNombre = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: const Text('Jeu de dés'),
              backgroundColor: Colors.red,
              centerTitle: true,
              elevation: 0,
            ),
            body: Center(
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            ChangeFaceDes();
                          },
                          child: Image(
                            image: AssetImage('images/dice$leftNombre.png'),
                          ))),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        ChangeFaceDes();
                      },
                      child: Image(
                          image: AssetImage('images/dice$rightNombre.png')),
                    ),
                  )
                ],
              ),
            )));
  }
}
