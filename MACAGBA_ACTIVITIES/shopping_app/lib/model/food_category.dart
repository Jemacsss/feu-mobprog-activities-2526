import 'package:flutter/material.dart';

enum FoodCategories {
  vegatable,
  fruit,
  meat,
  sweets,
  spices,
}

class FoodCategory {
  const FoodCategory(this.title, this.color);

  final String title;
  final Color color;
}