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
            )
          ],
        ),
      ),
    );
  }
}