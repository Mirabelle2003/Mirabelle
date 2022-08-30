import 'package:flutter/material.dart';
import 'package:mon_projet/bottom_sheets/bottom_sheets.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  late TextEditingController typeController;

  final List<String> paquet = ["Service regulier", "Carrosserie", "Electrique"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFD9D9D9),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 226, 225, 225),
            child: Image(image: AssetImage('images/Logo.png'), height: 30),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Rechercher',
                  hintStyle: TextStyle(fontStyle: FontStyle.italic)),
            ),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 226, 225, 225),
            child: IconButton(
                tooltip: 'Nos boutiques',
                onPressed: () => bottomsheets(context),
                icon: const Icon(
                  Icons.store,
                  color: Color(0XFF866020),
                )),
          ),
        ],
      ),
    );
  }

  void bottomsheets(context) {
    showModalBottomSheet(
        context: context, builder: (context) => const BottomSheets());
  }
}
