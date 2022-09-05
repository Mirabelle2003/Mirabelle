import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/post.dart';

class MyVue extends StatefulWidget {
  const MyVue({Key? key}) : super(key: key);

  @override
  State<MyVue> createState() => _MyVueState();
}

class _MyVueState extends State<MyVue> {
  List<Post>? posts;
  var isLoaded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma vue'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          child: const Text('bonjour'),
        );
      }),
    );
  }
}
