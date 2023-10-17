import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Überschrift im Menü"),
          ),
          // Hier kommen die Menüeinträge, für weitere Seiten einfach kopieren
          ListTile(
            title: const Text("Home"),
            selected: GoRouterState.of(context).path == '/',
            onTap: () {
              context.go('/');
            },
          ),
          ListTile(
            title: const Text("Zweite Seite"),
            selected: GoRouterState.of(context).path == '/secondpage',
            onTap: () {
              context.go('/secondpage');
            },
          ),
          ListTile(
            title: const Text("Dritte Seite"),
            selected: GoRouterState.of(context).path == '/thirdpage',
            onTap: () {
              context.go('/thirdpage');
            },
          ),
        ],
      ),
    );
  }
}
