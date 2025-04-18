import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Carlos',
      'telefone': '(44) 99823-3451',
      'url':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'
    },
    {
      'nome': 'José',
      'telefone': '(44) 99452-4423',
      'url':
          'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png'
    },
    {
      'nome': 'Maria',
      'telefone': '(44) 97162-0001',
      'url':
          'https://cdn.pixabay.com/photo/2021/05/10/08/00/woman-6242836_1280.png'
    },
    {
      'nome': 'Joana',
      'telefone': '(44) 99733-2211',
      'url':
          'https://cdn.pixabay.com/photo/2014/04/02/17/07/user-307993_1280.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Lista Pessoas')),
        body: ListView.builder(
            itemBuilder: (context, cont) => ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(pessoas[cont]['url'].toString())),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Text('Usuário Excluído');
                          },
                          icon: const Icon(Icons.delete),
                          color: Colors.red),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          color: Colors.amber)
                    ],
                  ),
                ),
                title: Text(pessoas[cont]['nome'].toString()),
                subtitle: Text(pessoas[cont]['telefone'].toString())),
            itemCount: pessoas.length))
            ;
  }
}
