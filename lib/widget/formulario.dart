import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() {
    return _Formulario();
  }
}

class _Formulario extends State<Formulario> {
  String _nome = '';
  var _campoNome = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Nome:'),
                ),
                controller: _campoNome,
                onSaved: (newValue) => _nome = _campoNome.text,
                validator: (valorDigitado) {
                  if (valorDigitado == null || valorDigitado.length < 3) {
                    return 'Nome deve ter 2 caracteres';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Email: '),
                ),
                validator: (valorDigitado) {
                  if (valorDigitado == null || !valorDigitado.contains('@')) {
                    return 'Email deve possuir @';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      print('deu certo');
                    } else {
                      print('deu errado');
                    }
                  },
                  child: const Text('Salvar')),
            ],
          )),
    );
  }
}
