import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _Lista createState() {
    return _Lista();
  }
}

class _Lista extends State<Lista> {
  var nomes = ['joana', 'Paulo', 'joaquim', 'Lucas'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  nomes.add('Helio');
                });
                print('deu certo! ${nomes.length}');
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: nomes.length, itemBuilder: (context, i) => Text(nomes[i])),
    );
  }
}
