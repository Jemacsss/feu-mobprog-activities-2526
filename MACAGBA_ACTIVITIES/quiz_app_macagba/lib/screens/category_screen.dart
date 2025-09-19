import 'package:flutter/material.dart';
import 'package:quiz_app_macagba/commons/styled_button.dart';
import 'package:quiz_app_macagba/commons/styled_text.dart';

class CategorySelectionScreen extends StatelessWidget {
  final Function(String category) onCategorySelected;

  const CategorySelectionScreen({super.key, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Evolutions',
      'Gym Leaders and Elite 4',
      'Pokemon Games',
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledText('Select Category', 28, Colors.black),
            const SizedBox(height: 40),
            ...categories.map(
              (category) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: StyledButton(
                  text: category,
                  onPressed: () => onCategorySelected(category),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
