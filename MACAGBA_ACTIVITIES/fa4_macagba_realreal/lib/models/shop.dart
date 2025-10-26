import 'package:fa5_macagba/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Hoodie",
      price: 1500.32,
      description: "it keeps you warm during cold days, good for styling",
      imagePath: 'assets/img/hoodie.png',
    ),
    Product(
      name: "Vest",
      price: 750.25,
      description: "This vest is perfect for warm weathers or if you want to look nice",
      imagePath: 'assets/img/vest.png',
    ),
    Product(
      name: "Shirt",
      price: 550.16,
      description: "This shirt is made with 100% cotton and it's a nice shirt",
      imagePath: 'assets/img/shirt.png',
    ),
    Product(
      name: "Sneakers",
      price: 3000.99,
      description: "You would look good wearing this",
      imagePath: 'assets/img/sneakers.png',
    ),
        Product(
      name: "Sunglasses",
      price: 800.12,
      description: "Perfect for the summer or if you have eye problems",
      imagePath: 'assets/img/sunglasses.png',
    ),
        Product(
      name: "Socks",
      price: 250.56,
      description: "If u get a pair of shoes, why not get a pair of socks",
      imagePath: 'assets/img/socks.png',
    ),
        Product(
      name: "Underwear",
      price: 150.00,
      description: "MUST HAVE!!!",
      imagePath: 'assets/img/underwear.png',
    ),
        Product(
      name: "Coat",
      price: 4000.70,
      description: "To look cool",
      imagePath: 'assets/img/coat.png',
    ),
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
