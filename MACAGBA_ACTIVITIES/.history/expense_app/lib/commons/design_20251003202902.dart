import 'package:flutter/material.dart';
import 'package:expense_app/commons/bgcolor.dart';
import 'package:expense_app/commons/appbar_theme.dart';

class AppDesign {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: BgColor.scaffold,
    appBarTheme: CustomAppBarTheme.theme,

    // Example buttons (can also be separated later if you want)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.deepPurple,
      ),
    ),
  );
}
