import 'package:flutter/material.dart';
import 'package:expense_app/commons/StyledText.dart';

class CustomAppBarTheme {
  static final AppBarTheme theme = AppBarTheme(
    backgroundColor: Color(0xFF0D1B2A),
    foregroundColor: Colors.white,
    elevation: 3,
    titleTextStyle: StyledText.titleLarge(
      color: Colors.white,
      size: 20,
    ),
  );
}