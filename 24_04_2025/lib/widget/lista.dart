import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _WidgetLista createState() {
    return _WidgetLista();
  }
}

class _WidgetLista extends State<Lista> {
  var nomes = ['carlos', 'rubens', 'mateus', 'carla'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista'), actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() => nomes.add('Zeca'));
          },
        )
      ]),
      body: ListView.builder(
          itemCount: nomes.length, itemBuilder: (context, i) => Text(nomes[i])),
    );
  }
}
