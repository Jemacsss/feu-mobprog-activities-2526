import 'package:flutter/material.dart';

class CustomAppBarTheme {
  static const AppBarTheme theme = AppBarTheme(
    backgroundColor: Colors.deepPurple,
    foregroundColor: Colors.white,
    elevation: 4,
    titleTextStyle: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: Colors.white,
    ),
  );
}