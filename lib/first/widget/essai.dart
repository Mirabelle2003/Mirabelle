import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Essai extends StatelessWidget {
  const Essai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 224, 232, 250),
        animationDuration: const Duration(milliseconds: 1000),
        onTap: (value) {
          print(value);
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.abc_outlined,
            color: Colors.white,
          )
        ],
      ),
      appBar: AppBar(),
      body: Builder(
        builder: (context) => Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
            child: const Icon(Icons.drag_indicator_outlined),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
    );
  }
}
