import 'package:flutter/material.dart';
import 'package:mon_projet/custom_clipper/clip_path.dart';
import 'package:mon_projet/register/password.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      appBar: AppBar(
        title: const Text('Vérification d\'adresse mail'),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Veillez entrer les quatres chiffres envoyés dans votre adresse mail',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                cursorColor: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                cursorColor: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                cursorColor: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                cursorColor: Colors.black,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPasswordScreen()));
                            },
                            child: const Text('Soumettre'))
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
