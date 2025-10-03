import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText{
  static TextStyle titleLarge({
    Color color = const Color(0xFF0D1B2A),
    double size = 32,
  }) {
    return GoogleFonts.quicksand(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyMedium({
    Color color = Colors.black87,
    double size = 26,
  }) {
    return GoogleFonts.quicksand(color: color, fontSize: size);
  }

  static TextStyle bodySmall({
    Color color = Colors.grey, 
    double size = 20,
    }) {
    return GoogleFonts.quicksand(color: color, fontSize: size);
  }
}
