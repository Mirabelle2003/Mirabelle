import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mon_projet/login/login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context)
          .pushReplacement(CupertinoPageRoute(builder: (ctx) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage('images/Belmira.png'), height: 100),
            SizedBox(height: 30),
            SpinKitSpinningLines(
              color: Color(0XFF4584FF),
              size: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
