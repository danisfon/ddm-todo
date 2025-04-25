import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/widget/componentes/delete_button.dart';
import 'package:flutter_application_1/widget/componentes/editar_button.dart';

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Joana',
      'telefone': '44999595959',
      'url':
          'https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761_1280.jpg'
    },
    {
      'nome': 'Maria',
      'telefone': '4488454745',
      'url':
          'https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104_1280.jpg'
    },
    {
      'nome': 'Silvana',
      'telefone': '44551121547',
      'url':
          'https://cdn.pixabay.com/photo/2015/09/22/21/35/woman-952506_1280.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista Pessoas"),
        ),
        body: ListView.builder(
            itemCount: pessoas.length,
            itemBuilder: (context, contador) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage('${pessoas[contador]['url']}'),
                  ),
                  title: Text('${pessoas[contador]['nome']}'),
                  subtitle: Text('${pessoas[contador]['telefone']}'),
                  trailing: const SizedBox(
                    width: 100,
                    child: Row(
                      children: [DeleteButton(), EditarButton()],
                    ),
                  ),
                )));
  }
}
