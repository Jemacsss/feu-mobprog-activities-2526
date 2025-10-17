import 'package:flutter/material.dart';

class CheckoutChart extends StatelessWidget {
  final Map<String, int> categoryCounts;

  const CheckoutChart({
    super.key,
    required this.categoryCounts,
  });

  double get maxValue {
    if (categoryCounts.isEmpty) return 0;
    return categoryCounts.values.reduce((a, b) => a > b ? a : b).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary.withOpacity(0.5),
            Theme.of(context).colorScheme.secondary.withOpacity(0.0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          // ✅ Bars
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: categoryCounts.entries.map((entry) {
                // ✅ Safe division: prevent division by zero
                double fill = maxValue == 0 ? 0 : entry.value / maxValue;

                // ✅ Clamp between 0 and 1 to avoid layout errors
                fill = fill.clamp(0.0, 1.0);

                return ChartBar(
                  fill: fill,
                  label: entry.key,
                  isDarkMode: isDarkMode,
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 12),
          // ✅ Labels
          Row(
            children: categoryCounts.keys.map((category) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    category,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isDarkMode
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.7),
                      fontSize: 10,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ChartBar extends StatelessWidget {
  final double fill;
  final String label;
  final bool isDarkMode;

  const ChartBar({
    super.key,
    required this.fill,
    required this.label,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: FractionallySizedBox(
          heightFactor: fill,
          alignment: Alignment.bottomCenter,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              color: isDarkMode
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
