import 'package:flutter/material.dart';
import 'package:quiz_app_macagba/commons/styled_text.dart';

class StyledButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color fontColor;

  const StyledButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: StyledText(text, 24, fontColor),
    );
  }
}
