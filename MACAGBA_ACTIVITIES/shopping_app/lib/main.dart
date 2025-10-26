import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/grocey_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.dark,
          surface: Colors.black,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 29, 33, 100)
      ),
      debugShowCheckedModeBanner: false,
      home: GroceyList(),
    );
  }
}
