import 'package:flutter/material.dart';
import 'commons/app_theme.dart';
import 'pos/login_screen.dart';

void main() {
  runApp(const POSApp());
}

class POSApp extends StatefulWidget {
  const POSApp({super.key});

  @override
  State<POSApp> createState() => _POSAppState();
}

class _POSAppState extends State<POSApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe POS',
      theme: isDarkMode ? cafeDarkTheme : cafeLightTheme,
      home: LoginScreen(toggleTheme: toggleTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}
