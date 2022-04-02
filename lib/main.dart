import 'package:essen/speise.dart';
import 'package:essen/tisch.dart';
import 'package:essen/vor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Categorie.dart';
import 'constants.dart';



void main () {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFeceff1),
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Center(
            child: Text('Was soll ich heute essen?'),
          ),
          backgroundColor: Color(0xFFeceff1),
        ),
        body: CategoriesPage(),
      ),

    ),
  );
}


class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),

      child: Center(
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10,
            ),
            children: <Widget>[
              Card(
                elevation: 8,
                color: CategorieCardColor,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Categories('Frühstück'),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 125,
                    width: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        child: Text(
                          'Frühstück',
                          style: GoogleFonts.rubik(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 8,
                color: CategorieCardColor,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CategoriesV('Hauptspeisen'),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 125,
                    width: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        child: Text(
                          'Hauptspeisen',
                          style: GoogleFonts.rubik(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 8,
                color: CategorieCardColor,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CategoriesH('Sweets'),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 125,
                    width: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        child: Text(
                          'Sweets',
                          style: GoogleFonts.rubik(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 8,
                color: CategorieCardColor,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CategoriesN('Specials'),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 125,
                    width: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        child: Text(
                          'Specials',
                          style: GoogleFonts.rubik(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}


