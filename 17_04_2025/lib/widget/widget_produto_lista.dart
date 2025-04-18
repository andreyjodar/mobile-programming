import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetProdutoLista extends StatelessWidget {
  var produtos = [
    {
      'nome': 'Violão',
      'categoria': 'Profissional',
      'preço': 8000,
      'quantidade': 4,
      'url':
          'https://cdn.pixabay.com/photo/2013/07/12/15/06/guitar-149427_1280.png'
    },
    {
      'nome': 'Guitarra',
      'categoria': 'Intermediário',
      'preço': 3000,
      'quantidade': 12,
      'url':
          'https://cdn.pixabay.com/photo/2021/01/23/20/57/guitar-5943732_1280.png'
    },
    {
      'nome': 'Baixo Elético',
      'categoria': 'Iniciante',
      'preço': 1200,
      'quantidade': 30,
      'url':
          'https://cdn.pixabay.com/photo/2018/03/23/09/30/double-bass-3253216_1280.png'
    },
    {
      'nome': 'Flauta Transversal',
      'categoria': 'Profissional',
      'preço': 5000,
      'quantidade': 8,
      'url':
          'https://cdn.pixabay.com/photo/2012/04/13/11/33/flute-31994_1280.png'
    },
    {
      'nome': 'Saxofone Alto',
      'categoria': 'Intermediário',
      'preço': 2500,
      'quantidade': 6,
      'url':
          'https://cdn.pixabay.com/photo/2012/04/12/12/30/saxophone-29816_1280.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lista Produtos')),
        body: ListView.builder(
            itemBuilder: (context, cont) => ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(produtos[cont]['url'].toString())),
                trailing: SizedBox(
                  width: 120,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Produto foi excluído')));
                          },
                          icon: const Icon(Icons.delete),
                          color: Colors.red),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(Rotas.produto);
                          },
                          icon: const Icon(Icons.edit),
                          color: Colors.amber),
                      IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Produto foi comprado!')));
                          },
                          icon: const Icon(Icons.attach_money),
                          color: Colors.green)
                    ],
                  ),
                ),
                title: Text(produtos[cont]['nome'].toString()),
                subtitle: Text(produtos[cont]['categoria'].toString())),
            itemCount: produtos.length));
  }
}
