import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/home_page.dart';
import 'pages/second_page.dart';
import 'pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

// Hier werden die verschiedenen Seiten (Routen) angelegt
// jede neue Seite braucht einen Eintrag in dieser Liste
// (das GoRoute-Objekt kopierem und anpassen)
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/secondpage',
      builder: (BuildContext context, GoRouterState state) {
        return const SecondPage();
      },
    ),
    GoRoute(
      path: '/thirdpage',
      builder: (BuildContext context, GoRouterState state) {
        return const ThirdPage();
      },
    ),
  ],
);

// Main App - hier muss nichts angepasst
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
