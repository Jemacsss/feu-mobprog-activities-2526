import 'package:flutter/material.dart';

Color defaultColor = Colors.blueGrey;

var kColorScheme = ColorScheme.fromSeed(seedColor: defaultColor);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: defaultColor,
);

ThemeData lightMode = ThemeData.light().copyWith(
  brightness: Brightness.light,
  colorScheme: kColorScheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kColorScheme.primaryContainer,
    foregroundColor: kColorScheme.onPrimaryContainer,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: kColorScheme.onSurface,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    bodyMedium: TextStyle(color: kColorScheme.onSurface, fontSize: 16),
    bodySmall: TextStyle(color: kColorScheme.onSurfaceVariant, fontSize: 12),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: kDarkColorScheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kDarkColorScheme.primaryContainer,
    foregroundColor: kDarkColorScheme.onPrimaryContainer,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: kDarkColorScheme.onSurface,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    bodyMedium: TextStyle(color: kDarkColorScheme.onSurface, fontSize: 16),
    bodySmall: TextStyle(color: kDarkColorScheme.onSurfaceVariant, fontSize: 12),
  ),
);
