import 'dart:math';
import 'package:essen/Rezept.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Sachen.dart';

class Categories extends StatelessWidget {
  String name;
  Categories(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4caf50),
        title: Text(name),
        foregroundColor: const Color(0xFFeceff1),
      ),
      body: DicePage(name),
    );
  }
}

class DicePage extends StatefulWidget {
  String name;
  DicePage(this.name, {Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int PicNumber = 1;
  int PiNumber = 1;

  void changeDiceNumber() {
    setState(() {
      PicNumber = Random().nextInt(4) + 1;
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
    return Center(
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.fromLTRB(50, 35, 50, 0),
            elevation: 15,
            color: const Color(0xFF4caf50),
            child: SizedBox(
              height: 80,
              width: 180,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Rezept(
                                infoBank[PicNumber].title,
                                widget
                                    .name), // passing name to Rezept class so we will use the same name in appbar
                          ),
                        );
                      },
                      child: Text(
                        infoBank[PicNumber].title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      PicNumber++;
                    });
                    changeDiceNumber();
                    print('LeftDiceNumber = $PicNumber');
                  },
                  child: Container(
                    height: 415,
                    width: 350,
                    margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    child: FittedBox(
                      child: infoBank[PicNumber].image,
                      fit: BoxFit.fill,
                      clipBehavior: Clip.hardEdge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
