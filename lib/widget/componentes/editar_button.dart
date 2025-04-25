// lib/components/delete_button.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class EditarButton extends StatelessWidget {
  const EditarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, Rotas.pessoa);
      },
      icon: const Icon(Icons.edit),
      color: Colors.black,
    );
  }
}
