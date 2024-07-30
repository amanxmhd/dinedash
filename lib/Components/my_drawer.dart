import 'package:dinedash/Components/my_drawer_tile.dart';
import 'package:dinedash/Pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.fastfood_sharp,
            size: 50,
            color: Theme.of(context).colorScheme.inversePrimary),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
          ),

          // settings list style
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.home,
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(
                    builder: (context)=> const SettingsPage(),
                ),
                );
              }),

          const Spacer(),

          // logout list style
          MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.home,
              onTap: (){}),

          const SizedBox(height: 25),

        ],
      ),
    );
  }
}