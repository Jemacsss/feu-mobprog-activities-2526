import 'package:fa5_macagba/models/products.dart';
import 'package:flutter/material.dart';

class AppProduct extends StatelessWidget {
  final Product product;

  const AppProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(25),
              child: Icon(Icons.star),
            ),
          ),
          SizedBox(height: 25),
          Text(product.name),
          Text(product.description),
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
