import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget_pessoa_lista.dart';
import '../widget/widget_cidade.dart';
import '../widget/widget_estado.dart';
import '../widget/widget_menu.dart';
import '/configuracao/rotas.dart';
import '../widget/widget_pessoa.dart';
import '../widget/lista.dart';
import '../widget/formulario.dart';
import '../widget/widget_todolist.dart';

//C:\Users\Aluno\Downloads\teste\flutter_application_1\lib\widget\componentes\widget.menu.dart

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        //Rotas.home: (context) => WidgetMenu(),
        Rotas.home: (context) => WidgetToDoList(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.listaPessoas: (context) => WidgetPessoaLista(),
        Rotas.lista: (context) => Lista(),
        Rotas.formulario: (context) => Formulario(),
      },
    );
  }
}
