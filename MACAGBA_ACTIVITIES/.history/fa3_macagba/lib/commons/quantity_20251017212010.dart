import 'package:flutter/material.dart';
import 'package:fa3_macagba/models/menu_item.dart';


Future<int?> showQuantityModal(BuildContext context, MenuItem item) async {
  int quantity = 1;
  return showDialog<int>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(item.name),
        content: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('₱${item.price.toStringAsFixed(0)} per item', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (quantity > 1) setState(() => quantity--);
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(quantity.toString(),
                        style: Theme.of(context).textTheme.titleMedium),
                    IconButton(
                      onPressed: () => setState(() => quantity++),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                Text(
                  'Total: ₱${(item.price * quantity).toStringAsFixed(0)}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, quantity),
            child: const Text('Add'),
          ),
        ],
      );
    },
  );
}
