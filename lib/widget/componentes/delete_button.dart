// lib/components/delete_button.dart

import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Usuário excluído com sucesso'),
          ),
        );
      },
      icon: const Icon(Icons.delete),
      color: Colors.red,
    );
  }
}


//ScaffoldMessenger.of(context).showSnackBar(
//const SnackBar(
// content: Text('Usuário excluído com sucesso'),
//),
//);