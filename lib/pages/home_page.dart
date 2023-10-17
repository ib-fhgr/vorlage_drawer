import 'package:flutter/material.dart';
import 'package:vorlage_drawer/pages/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: const Center(
        child: Text("Homepage"),
      ),
      drawer: AppDrawer(),
    );
  }
}
