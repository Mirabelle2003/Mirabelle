import 'package:flutter/material.dart';
import 'package:mon_projet/first/widget/drawer.dart';
import 'package:mon_projet/first/widget/grid_view.dart';
import 'package:mon_projet/first/widget/list_view_annonce.dart';
import 'package:mon_projet/first/widget/search.dart';

class FirstPageScreen extends StatelessWidget {
  const FirstPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        backgroundColor: const Color.fromARGB(255, 224, 232, 250),
        appBar: AppBar(
          title: const Text('Belmira Accueil'),
          centerTitle: false,
          backgroundColor: const Color(0XFF4584FF),
        ),
        body: Column(
          children: [
            const Search(),
            const ListViewAnnonce(),
            const FirstGridView(),
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0XFFD9D9D9)),
            ),
          ],
        ));
  }
}
