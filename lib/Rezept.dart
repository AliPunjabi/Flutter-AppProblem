import 'package:flutter/material.dart';
import 'Sachen.dart';
import 'dart:math';

class Rezept extends StatelessWidget {
  final String rezept;
  final String name; //new changes
  Rezept(this.rezept, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4caf50),
        title: Text(name), //before changes it was Text(rezept)
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      body: RezeptPage(rezept),
    );
  }
}

class RezeptPage extends StatefulWidget {
  String rezept;
  RezeptPage(this.rezept, {Key? key}) : super(key: key);

  @override
  _RezeptPageState createState() => _RezeptPageState();
}

class _RezeptPageState extends State<RezeptPage> {
  int PiNumber = 1;

  void changeDiceNumber() {
    setState(() {
      PiNumber = Random().nextInt(4) + 1;
    });
  }

  final List<Sachen> infoBank = [
    Sachen(
        title: "Schoko-Bowl",
        image: Image.asset("Images/frue1.png"),
        text: '-Mehl'),
    Sachen(
        title: "Smoothie-Bowl",
        image: Image.asset("images/frue2.png"),
        text: '-Zucker'),
    Sachen(
        title: "Porridge",
        image: Image.asset("images/frue3.png"),
        text: '-Milch'),
    Sachen(
        title: "Porridge",
        image: Image.asset("images/frue4.png"),
        text: '-Eier'),
    Sachen(
        title: "Schoko Mousse",
        image: Image.asset("images/frue5.png"),
        text: '-Butter'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Card(
              elevation: 8,
              child: ListTile(
                title: Center(
                  child: Text(
                    widget.rezept,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 500,
          child: Card(
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
              child: RichText(
                text: const TextSpan(
                  text: 'Zutaten:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22.0,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\n\n-Mehl'
                          '\n-Zucker'
                          '\n-Milch'
                          '\n-Eier'
                          '\n-Butter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: '\n\nZubereitung:',
                    ),
                    TextSpan(
                      text: '\n\n-Zuerst vermischen wir alles'
                          '\n-Anschließend wird es in der Pfanne angebraten'
                          '\n-Zuletzt mit Schokolade bestreichen und genießen',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
