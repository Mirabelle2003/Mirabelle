import 'package:flutter/material.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({Key? key}) : super(key: key);

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  final List<String> boutique = [
    "Propriétaire",
    "Gestionnaire",
    "Service client",
    "Chauffeur",
    "Technicien",
    "Mécanicien",
    "Technicien",
    "Électricien",
    "Conseiller",
    "Mécanicien",
    "Peintre",
    "Superviseur",
  ];

  @override
  Widget build(BuildContext context) {
    var i = -1;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                  alignment: Alignment.topRight,
                  tooltip: 'Fermer',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.cancel, color: Color(0XFF866020))),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  BottomSheetsCard(
                      image: const Image(image: AssetImage('images/Logo.png')),
                      label: boutique[i + 1],
                      widget: widget),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomSheetsCard extends StatelessWidget {
  const BottomSheetsCard(
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
        color: Colors.yellow[100],
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => widget));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 4, child: image),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(1),
                    color: const Color.fromARGB(255, 208, 220, 248),
                    child: Center(
                      child: Text(
                        label,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0XFF4584FF),
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
