import 'package:fa5_macagba/commons/list_tile.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            DrawerHeader(
            child: Center(
              child: Icon(
                Icons.roller_shades_closed_sharp,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          const SizedBox(height: 25,),
          AppListTile(text: "Shop", icon: Icons.home, onTap: () {}),
          AppListTile(text: "Cart", icon: Icons.shopping_cart_checkout, onTap: () {}),
          ],),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: AppListTile(text: "Exit", icon: Icons.logout, onTap: () {}),
          ),
        ],
      ),
    );
  }
}
