import 'package:fa5_macagba/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  final List<Product> _shop = [
    Product(name: "Item 1", price: 100.01, description: "Lorem"),
    Product(name: "Item 2", price: 100.01, description: "Lorem"),
    Product(name: "Item 3", price: 100.01, description: "Lorem"),
    Product(name: "Item 4", price: 100.01, description: "Lorem"),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addItemtoCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeItemtoCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
