import 'package:flutter/material.dart';
import 'package:minimial_notes_app_hive/pages/setteings_page.dart';
import 'package:minimial_notes_app_hive/widgets/drawer_list_tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 70,
                width: 70,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const DrawerListTile(
                title: "N O T E S",
                icon: Icons.edit,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SetteingsPage.id);
              },
              child: const DrawerListTile(
                title: "S E T T I N G S",
                icon: Icons.settings,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
