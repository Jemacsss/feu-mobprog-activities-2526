import 'package:fa5_macagba/screens/start_screen.dart';
import 'package:fa5_macagba/commons/color.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
      theme: lightMode,
    );
  }
}
