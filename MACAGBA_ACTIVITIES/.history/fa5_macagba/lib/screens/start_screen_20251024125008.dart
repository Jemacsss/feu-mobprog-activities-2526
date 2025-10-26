import 'package:fa5_macagba/commons/styled_text.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.roller_shades_closed_sharp,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 20),
            Text(
              "Shop",
              style: StyledText.titleLarge(context),
            ),
            SizedBox(height: 20),
            Text(
              "Good Products",
              style: StyledText.bodyMedium(context),
            )
          ],
        ),
      ),
    );
  }
}