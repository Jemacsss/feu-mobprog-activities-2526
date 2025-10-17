import 'package:flutter/material.dart';

Color defaultColor = const Color.fromARGB(255, 116, 81, 56);
//Color defaultColor = const Color.fromARGB(255, 25, 9, 167);


var kColorScheme = ColorScheme.fromSeed(
  seedColor: defaultColor,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: defaultColor,
);
