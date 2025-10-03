import 'package:expense_app/commons/design.dart';
import 'package:expense_app/expense/expense_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: AppDesign.color,
    home: ExpenseScreen(),
  ));
}