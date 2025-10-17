import 'package:flutter/material.dart';

Color defaultColor = const Color(0xFF6F4E37);

var kColorScheme = ColorScheme.fromSeed(
  seedColor: defaultColor,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: defaultColor,
);
