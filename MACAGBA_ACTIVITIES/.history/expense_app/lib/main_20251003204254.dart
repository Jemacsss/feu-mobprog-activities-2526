import 'package:expense_app/commons/appbar_theme.dart';
import 'package:expense_app/commons/bgcolor.dart';
import 'package:expense_app/expense/expense_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: CustomAppBarTheme.theme
    ),
    home: const ExpenseScreen(),
  ));
}