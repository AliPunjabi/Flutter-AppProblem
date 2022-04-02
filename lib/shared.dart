import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

buildTextVariation1(String text){
  return Text(
    text,
    style: GoogleFonts.rubik(
    fontSize: 20,
    color: Colors.white,
  ),
  );

}