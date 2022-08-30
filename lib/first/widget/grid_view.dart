import 'package:flutter/material.dart';
import 'package:mon_projet/details/articles_detail.dart';
import 'package:mon_projet/first/widget/jeu.dart';
import 'package:mon_projet/login/login.dart';

class FirstGridView extends StatelessWidget {
  const FirstGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: const <Widget>[
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: "He'd have you all unravel at the",
              widget: ArticlesDetail()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Heed not the rabble',
              widget: JeuDesScreen()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Sound of screams but the',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Sound of screams but the',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Who scream',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Revolution is coming...',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: "He'd have you all unravel at the",
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Heed not the rabble',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Sound of screams but the',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Who scream',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Revolution is coming...',
              widget: Login()),
          FirstGridViewCard(
              image: Image(image: AssetImage('images/Logo.png')),
              label: 'Revolution, they...',
              widget: Login()),
        ],
      ),
    );
  }
}

class FirstGridViewCard extends StatelessWidget {
  const FirstGridViewCard(
      {Key? key,
      required this.image,
      required this.label,
      required this.widget})
      : super(key: key);
  final Image image;
  final String label;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: image),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              color: const Color.fromARGB(255, 208, 220, 248),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => widget));
                  },
                  child: Center(
                    child: Text(
                      label,
                      style: const TextStyle(
                        color: Color(0XFF4584FF),
                      ),
                      maxLines: 1,
                    ),
                  )),
            )
          ],
        ));
  }
}
