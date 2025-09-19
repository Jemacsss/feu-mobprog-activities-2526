import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/img/mudkip.png', width: 250),
        const Text(
          "Mudkip!",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        FloatingActionButton.extended(
          onPressed: switchScreen,
          icon: Icon(Icons.arrow_right),
          label: const Text('Press', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
      ],
    );
  }
}
