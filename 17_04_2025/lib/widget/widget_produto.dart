import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetProduto extends StatelessWidget {
  const WidgetProduto({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de Produto'),
        ),
        body: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Insira o nome do produto',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Categoria',
                hintText: 'Insira a categoria do produto',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Preco',
                hintText: 'Insira o preco do produto',
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Categoria'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('Profissional')),
                DropdownMenuItem(value: '2', child: Text('Intermediário')),
                DropdownMenuItem(value: '3', child: Text('Iniciante')),
              ],
              onChanged: (value) {},
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                Navigator.of(context).pushNamed(Rotas.produtoLista);
              },
            ),
            ElevatedButton(
              child: const Text('Voltar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        )));
  }
}
