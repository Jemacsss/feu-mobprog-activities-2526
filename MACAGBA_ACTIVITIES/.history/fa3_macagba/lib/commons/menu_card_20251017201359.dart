import 'package:flutter/material.dart';
import 'package:fa3_macagba/models/menu_item.dart';


class MenuCard extends StatelessWidget {
  final MenuItem item;
  final VoidCallback onTap;

  const MenuCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(item.image, fit: BoxFit.contain),
            ),
            const SizedBox(height: 8),
            Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text('₱${item.price.toStringAsFixed(0)}'),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
