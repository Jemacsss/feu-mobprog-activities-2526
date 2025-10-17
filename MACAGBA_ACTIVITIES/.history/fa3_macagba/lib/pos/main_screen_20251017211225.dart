import 'package:flutter/material.dart';
import 'package:fa3_macagba/data/menu_data.dart';
import 'package:fa3_macagba/commons/quantity.dart';
import 'package:fa3_macagba/commons/menu_card.dart';
import 'package:fa3_macagba/models/menu_item.dart';
import 'checkout_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Map<String, dynamic>> cart = [];
  final Set<int> selectedIndexes = {};

  void addToCart(MenuItem item, int quantity, int index) {
    setState(() {
      cart.add({'item': item, 'quantity': quantity});
      selectedIndexes.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cafe Menu')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          final isSelected = selectedIndexes.contains(index);
          return InkWell(
            onTap: () async {
              final quantity = await showQuantityModal(context, item);
              if (quantity != null) {
                addToCart(item, quantity, index);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary.withOpacity(0.3)
                    : Colors.transparent,
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: MenuCard(
                item: item,
                onTap: () async {
                  final quantity = await showQuantityModal(context, item);
                  if (quantity != null) {
                    addToCart(item, quantity, index);
                  }
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: ElevatedButton(
          onPressed: cart.isEmpty
              ? null
              : () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(cart: cart),
                    ),
                  );
                },
          child: const Text('Checkout'),
        ),
      ),
    );
  }
}
