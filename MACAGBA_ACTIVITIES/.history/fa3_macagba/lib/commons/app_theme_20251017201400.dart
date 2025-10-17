import 'package:flutter/material.dart';

const Color cafeBrown = Color(0xFF6F4E37);
const Color cafeCream = Color(0xFFF5F5DC);
const Color cafeGold = Color(0xFFD4AF37);
const Color cafeDark = Color(0xFF3E2723);

final ThemeData cafeLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: cafeBrown,
  scaffoldBackgroundColor: cafeCream,
  appBarTheme: const AppBarTheme(
    backgroundColor: cafeBrown,
    foregroundColor: Colors.white,
  ),
  colorScheme: const ColorScheme.light(
    primary: cafeBrown,
    secondary: cafeGold,
  ),
);

final ThemeData cafeDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: cafeDark,
  scaffoldBackgroundColor: cafeDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: cafeDark,
    foregroundColor: Colors.white,
  ),
  colorScheme: const ColorScheme.dark(
    primary: cafeDark,
    secondary: cafeGold,
  ),
);
