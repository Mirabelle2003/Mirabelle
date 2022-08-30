import 'package:flutter/material.dart';
import 'package:mon_projet/custom_clipper/clip_path.dart';
import 'package:mon_projet/first/firstpage.dart';

class RegisterPasswordScreen extends StatelessWidget {
  const RegisterPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      appBar: AppBar(
        title: const Text('Mot de passe'),
        centerTitle: false,
        backgroundColor: const Color(0XFF4584FF),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const MyClipPath(),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              label: const Text('Mot de passe'),
                              prefixIcon: const Icon(Icons.lock,
                                  color: Color(0XFF4584FF)),
                              suffix: InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.visibility_off))),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          cursorColor: Colors.black,
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              label: const Text('Confirmation du mot de passe'),
                              prefixIcon: const Icon(Icons.lock,
                                  color: Color(0XFF4584FF)),
                              suffix: InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.visibility_off))),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          cursorColor: Colors.black,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FirstPageScreen()));
                            },
                            child: Text('Suivant'.toUpperCase(),
                                style: const TextStyle(fontSize: 10))),
                      ],
                    ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0XFFD9D9D9)),
          ),
        ],
      ),
    );
  }
}
