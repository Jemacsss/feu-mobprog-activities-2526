import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText {
  static TextStyle titleLarge({double size = 32}) {
    return GoogleFonts.quicksand(fontSize: size, fontWeight: FontWeight.bold);
  }

  static TextStyle bodyMedium({
    double size = 20,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.quicksand(fontSize: size, fontWeight: weight);
  }

  static TextStyle bodySmall({
    double size = 16,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.quicksand(fontSize: size, fontWeight: weight);
  }
}
