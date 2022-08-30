import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mon_projet/custom_clipper/clip_path.dart';
import 'package:mon_projet/login/login.dart';
import 'package:mon_projet/register/verify.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      appBar: AppBar(
        title: const Text('Inscription'),
        centerTitle: false,
        backgroundColor: const Color(0XFF4584FF),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const MyClipPath(),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Nom de famille'),
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0XFF4584FF)),
                            ),
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Prénom (s)'),
                              prefixIcon: Icon(Icons.contacts,
                                  color: Color(0XFF4584FF)),
                            ),
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Pays'),
                                    prefixIcon: Icon(Icons.abc,
                                        color: Color(0XFF4584FF)),
                                  ),
                                  keyboardType: TextInputType.text,
                                  cursorColor: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Ville'),
                                    prefixIcon: Icon(Icons.abc,
                                        color: Color(0XFF4584FF)),
                                  ),
                                  keyboardType: TextInputType.text,
                                  cursorColor: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Numéro de téléphone'),
                              prefixIcon:
                                  Icon(Icons.phone, color: Color(0XFF4584FF)),
                            ),
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Adresse mail'),
                              prefixIcon:
                                  Icon(Icons.mail, color: Color(0XFF4584FF)),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const VerifyScreen()));
                              },
                              child: Text('S\'inscrire'.toUpperCase(),
                                  style: const TextStyle(fontSize: 10))),
                          const SizedBox(height: 20),
                          Center(
                            child: Text.rich(TextSpan(
                                text: 'Vous avez un compte ? ',
                                children: [
                                  TextSpan(
                                    text: 'Connectez-vous',
                                    style: const TextStyle(
                                        color: Color(0XFF4584FF),
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Login()));
                                      },
                                  ),
                                ])),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ))
                ],
              ),
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
