import 'package:flutter/material.dart';
import 'package:list_cards/widgets/listcards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de contactos'),
        backgroundColor: Colors.red[300],
      ),
      body: ListCards(),
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[300],
        child: const Icon(Icons.add),
      ),
    );
  }
}