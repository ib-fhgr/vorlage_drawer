import 'package:flutter/material.dart';
import 'package:vorlage_drawer/pages/drawer.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dritte Seite')),
      body: const Center(
        child: Text("Dritte Seite"),
      ),
      drawer: AppDrawer(),
    );
  }
}
