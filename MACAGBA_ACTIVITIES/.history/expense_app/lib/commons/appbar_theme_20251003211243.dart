import 'package:expense_app/commons/bgcolor.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/commons/StyledText.dart';

class CustoAppBarTheme {
  static final AppBarTheme theme = AppBarTheme(
    backgroundColor: Bgcolor.primaryDark,
    foregroundColor: Colors.white,
    elevation: 3,
    titleTextStyle: StyledText.titleLarge(
      color: Colors.white,
      size: 20,
    ),
  );
}