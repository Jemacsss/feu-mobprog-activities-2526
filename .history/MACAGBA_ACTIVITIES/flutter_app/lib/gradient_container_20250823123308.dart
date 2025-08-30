import "package:flutter/material.dart";
import "package:flutter_app/text.dart";

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.colors1, this.colors2,{super.key});

  final dynamic? colors1;
  final dynamic? colors2;

  @override
  Widget build (context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colors1, colors2],
              begin: AlignmentGeometry.bottomLeft,
              end: AlignmentGeometry.topRight,
            ),
          ),
          child: const Center(
            child: Texted("Hello World"),
          ),
        );
  }
}