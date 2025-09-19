import 'package:flutter/material.dart';
import 'package:quiz_app_macagba/commons/styled_button.dart';
import 'package:quiz_app_macagba/commons/styled_text.dart';

class TitleScreen extends StatelessWidget {
  final VoidCallback onStart;

  const TitleScreen({super.key, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pokeball.png', height: 150),
            const SizedBox(height: 30),
            StyledText('Pokemon Quiz', 42, Colors.black),
            const SizedBox(height: 40),
            StyledButton(text: 'Start Quiz', onPressed: onStart),
          ],
        ),
      ),
    );
  }
}
