import 'package:fa5_macagba/models/shop.dart';
import 'package:fa5_macagba/screens/cart_screen.dart';
import 'package:fa5_macagba/screens/dice_screen.dart';
import 'package:fa5_macagba/screens/shop_screen.dart';
import 'package:fa5_macagba/screens/start_screen.dart';
import 'package:fa5_macagba/commons/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: const StartScreen(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/start_screen': (context) => const StartScreen(),
        '/shop_screen': (context) => const ShopScreen(),
        '/cart_screen': (context) => const CartScreen(),
        '/dice_screen': (context) => const DiceRoller(),
      },
    );
  }
}
