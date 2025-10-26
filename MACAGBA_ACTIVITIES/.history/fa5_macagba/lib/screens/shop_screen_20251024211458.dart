import 'package:fa5_macagba/commons/app_drawer.dart';
import 'package:fa5_macagba/commons/app_product.dart';
import 'package:fa5_macagba/models/products.dart';
import 'package:fa5_macagba/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: const Text("Shop")),
      ),
      drawer: const AppDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView.builder(itemBuilder: (context, index){
        final product = products[index];
        return AppProduct(product: product);
      },),
    );
  }
}