import 'package:flutter/material.dart';
import 'package:mon_projet/first/widget/essai.dart';
import 'package:mon_projet/login/login.dart';

class ListViewAnnonce extends StatelessWidget {
  const ListViewAnnonce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          color: const Color.fromARGB(255, 208, 220, 248),
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Beauté',
                color: Colors.amber,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Cuisine',
                color: Colors.grey,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Immobilier',
                color: Colors.green,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Vêtements',
                color: Colors.deepOrange,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Esthétique',
                color: Colors.indigoAccent,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Education',
                color: Colors.deepPurple,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Art',
                color: Colors.amber,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Hôtellerie',
                color: Colors.amber,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Mécanique',
                color: Colors.amber,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Automobile',
                color: Colors.amber,
                widget: Login(),
              ),
              SizedBox(width: 10),
              Cercle(
                icon: Icon(Icons.ac_unit),
                title: 'Mécanique',
                color: Colors.amber,
                widget: Login(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Cercle extends StatelessWidget {
  final Widget widget;
  final Color color;
  final Icon icon;
  final String title;
  const Cercle(
      {Key? key,
      required this.icon,
      required this.title,
      required this.color,
      required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Essai()));
              },
              child: icon),
        ),
        Text(title),
      ],
    );
  }
}
