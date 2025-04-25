import 'package:flutter/material.dart';
import '/configuracao/rotas.dart';

class WidgetToDoList extends StatelessWidget {
  const WidgetToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDo List')),
      body: const Center(
        child: Text('Bem-vindo ao seu ToDo List!'),
      ),
    );
  }
}
