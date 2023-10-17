import 'package:flutter/material.dart';
import 'package:vorlage_drawer/pages/drawer.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zweite Seite')),
      body: const Center(
        child: Text("Zweite Seite"),
      ),
      drawer: AppDrawer(),
    );
  }
}
