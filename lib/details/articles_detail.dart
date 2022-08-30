import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ArticlesDetail extends StatelessWidget {
  const ArticlesDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0XFFD9D9D9),
                    ),
                    height: 200,
                    width: double.infinity,
                    child: const Image(image: AssetImage('images/Logo.png')),
                  ),
                  const Text('jjjhhhhhhhhhhhhhhhh'),
                  const Text(
                      'jgggggggggggggggggg jgggggggggggggggggggggggggggggg jgggggggggggggggggg tjggggggggggggggggggjgggggggggggggggggg jggggggggggggggggggjggggggggggggggggggjggggggggggggggggggjggggggggggggggggggjgggggggggggggggggggjggggggggggggggggggjggggggggggggggggggjggggggggggggggggggjgggggggggggggggggg jggggggggggggggggggjggggggggggggggggggjggggggggggggggggggjggggggggggggggggggjgggggggggggggggggg jggggggggggggggggggjggggggggggggggggggjgggggggggggggggggg jggggggggggggggggggjgggggggggggggggggg '),
                  RichText(
                    text: TextSpan(
                      text: 'ggg',
                      style: const TextStyle(
                          color: Colors.orange,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const PlusArticles(),
          ],
        ),
      ),
    );
  }
}

class PlusArticles extends StatelessWidget {
  const PlusArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          Container(color: Colors.yellow),
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.yellow)),
        ],
      ),
    );
  }
}
