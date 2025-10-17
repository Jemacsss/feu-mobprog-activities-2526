import 'package:flutter/material.dart';

// Color defaultColor = const Color(0xFF6F4E37);
Color defaultColor = const Color.fromARGB(255, 55, 111, 58);

var kColorScheme = ColorScheme.fromSeed(
  seedColor: defaultColor,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: defaultColor,
);
