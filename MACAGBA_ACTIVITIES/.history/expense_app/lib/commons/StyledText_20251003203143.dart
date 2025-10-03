import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styledtext {
  static TextStyle titleLarge({
    Color color = const Color(0xFF0D1B2A),
    double size = 22,
  }) {
    return GoogleFonts.rowdies(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyMedium({
    Color color = Colors.black87,
    double size = 16,
  }) {
    return GoogleFonts.rowdies(color: color, fontSize: size);
  }

  static TextStyle bodySmall({
    Color color = Colors.grey, 
    double size = 14,
    }) {
    return GoogleFonts.rowdies(color: color, fontSize: size);
  }
}
