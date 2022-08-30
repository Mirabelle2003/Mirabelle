import 'package:flutter/cupertino.dart';
import 'package:mon_projet/custom_clipper/custom_clipper.dart';

class MyClipPath extends StatelessWidget {
  const MyClipPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        width: double.infinity,
        height: 175,
        decoration: const BoxDecoration(
          color: Color(0XFFD9D9D9),
        ),
        child: const Image(image: AssetImage('images/Logo.png')),
      ),
    );
  }
}
