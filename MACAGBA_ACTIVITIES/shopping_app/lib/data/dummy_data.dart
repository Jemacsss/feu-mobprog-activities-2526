import 'package:shopping_app/model/grocery_item.dart';
import 'package:shopping_app/data/food_categories.dart';
import 'package:shopping_app/model/food_category.dart';

final groceryItems = [
  GroceryItem(
    id: 'a',
    name: 'Lettuce',
    quantity: 2,
    foodCategory: foodCategories[FoodCategories.vegatable]!,
  ),
    GroceryItem(
    id: 'b',
    name: 'Banana',
    quantity: 2,
    foodCategory: foodCategories[FoodCategories.fruit]!,
  ),
    GroceryItem(
    id: 'c',
    name: 'Ribeye',
    quantity: 2,
    foodCategory: foodCategories[FoodCategories.meat]!,
  ),
];
