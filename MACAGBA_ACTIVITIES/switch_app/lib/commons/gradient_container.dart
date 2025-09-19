import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key, required this.activeScreen});

  final Color color1;
  final Color color2;
  final Widget? activeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2],
        ),
      ),
      child: Center(child: activeScreen),
    );
  }
}
