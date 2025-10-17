import 'package:flutter/material.dart';
import 'package:fa3_macagba/models/menu_item.dart';
import 'package:fa3_macagba/pos/login_screen.dart';
import 'package:fl_chart/fl_chart.dart';

class CheckoutScreen extends StatefulWidget {
  final List<Map<String, dynamic>> cart;

  const CheckoutScreen({super.key, required this.cart});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  double get total {
    double sum = 0;
    for (var item in widget.cart) {
      final menuItem = item['item'] as MenuItem;
      final quantity = item['quantity'] as int;
      sum += menuItem.price * quantity;
    }
    return sum;
  }

  Map<String, int> getCategoryCounts() {
    final Map<String, int> counts = {};
    for (var item in widget.cart) {
      final menuItem = item['item'] as MenuItem;
      counts[menuItem.category] = (counts[menuItem.category] ?? 0) + 1;
    }
    return counts;
  }

  @override
  Widget build(BuildContext context) {
    final categoryCounts = getCategoryCounts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Total: ₱${total.toStringAsFixed(0)}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen(toggleTheme: null as dynamic)),
                (route) => false,
              );
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                barGroups: categoryCounts.entries.map((e) {
                  return BarChartGroupData(
                    x: e.key.hashCode,
                    barRods: [
                      BarChartRodData(
                        toY: e.value.toDouble(),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  );
                }).toList(),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, _) {
                        final title = categoryCounts.keys.firstWhere(
                          (k) => k.hashCode == value,
                          orElse: () => '',
                        );
                        return Text(title, style: const TextStyle(fontSize: 10));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (context, index) {
                final item = widget.cart[index]['item'] as MenuItem;
                final qty = widget.cart[index]['quantity'] as int;

                return Dismissible(
                  key: Key(item.name),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (_) {
                    setState(() {
                      widget.cart.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${item.name} removed from cart')),
                    );
                  },
                  child: ListTile(
                    leading: Image.asset(item.image, width: 40),
                    title: Text(item.name),
                    subtitle:
                        Text('₱${item.price} x $qty = ₱${item.price * qty}'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Return to Menu'),
            ),
          ),
        ],
      ),
    );
  }
}
