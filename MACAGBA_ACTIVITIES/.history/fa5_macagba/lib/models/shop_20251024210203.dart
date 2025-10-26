import 'package:fa5_macagba/models/products.dart';

class Shop {
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
  }

  void removeItemtoCart(Product item) {
    _cart.remove(item);
  }
}
