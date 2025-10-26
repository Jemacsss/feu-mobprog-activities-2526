import 'package:fa5_macagba/commons/app_button.dart';
import 'package:fa5_macagba/commons/styled_text.dart';
import 'package:fa5_macagba/models/products.dart';
import 'package:fa5_macagba/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Remove item to cart?"),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () => {
              Navigator.pop(context),
              context.read<Shop>().removeItemtoCart(product),
            },
            child: Text("Remove"),
          ),
        ],
      ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text("Thank you")),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.primaryFixed,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        title: Text("Cart", style: StyledText.titleLarge(context)),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Center(
                    child: Text(
                      "Why don't you have items yet, browse the selection",
                      style: StyledText.bodyMedium(context),
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => removeItemFromCart(context, item),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Button(
              onTap: () => payButtonPressed(context),
              child: Text(
                "Are u done?",
                style: StyledText.bodyMedium(
                  context,
                  color: Theme.of(
                    context,
                  ).colorScheme.onPrimaryFixed,
                  size: 28,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
