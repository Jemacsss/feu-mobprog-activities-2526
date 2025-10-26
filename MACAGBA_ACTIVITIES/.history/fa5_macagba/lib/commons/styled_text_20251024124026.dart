import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText {
  static TextStyle titleLarge({
    Color color =  Colors.white,
    double size = 32,
  }) {
    return GoogleFonts.quicksand(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyMedium({
    Color color = Colors.white,
    double size = 20,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.quicksand(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );
  }

  static TextStyle bodySmall({
    Color color = Colors.white,
    double size = 16,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.quicksand(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );
  }
}
