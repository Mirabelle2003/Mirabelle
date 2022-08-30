import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mon_projet/custom_clipper/clip_path.dart';
import 'package:mon_projet/first/firstpage.dart';
import 'package:mon_projet/register/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 232, 250),
      appBar: AppBar(
        title: const Text('Connexion'),
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
                              label: Text('Adresse mail'),
                              prefixIcon:
                                  Icon(Icons.mail, color: Color(0XFF4584FF)),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                label: const Text('Mot de passe'),
                                prefixIcon: const Icon(Icons.lock,
                                    color: Color(0XFF4584FF)),
                                suffix: InkWell(
                                    onTap: () {},
                                    child: const Icon(Icons.visibility_off))),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                            obscureText: true,
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
                              child: Text('Se connecter'.toUpperCase(),
                                  style: const TextStyle(fontSize: 10))),
                          const SizedBox(height: 20),
                          Center(
                            child: Text.rich(TextSpan(
                                text: 'Vous êtes nouveau ? ',
                                children: [
                                  TextSpan(
                                    text: 'Inscrivez-vous',
                                    style: const TextStyle(
                                        color: Color(0XFF4584FF),
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RegisterScreen()));
                                      },
                                  )
                                ])),
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
