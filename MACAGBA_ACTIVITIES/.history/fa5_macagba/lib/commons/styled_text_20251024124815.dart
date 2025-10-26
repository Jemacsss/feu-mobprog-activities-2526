import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText {
  static TextStyle titleLarge(
    BuildContext context, {
      Color? color,
      double size = 32,
  }) {
    return GoogleFonts.quicksand(
      color: color ?? Theme.of(context).colorScheme.inversePrimary,
      fontSize: size,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyMedium(
    BuildContext context, {
      Color? color,
      double size = 16,
      FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.quicksand(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );
  }

  static TextStyle bodySmall(
    BuildContext context, {
      Color? color,
      double size = 12,
      FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.quicksand(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );
  }
}
