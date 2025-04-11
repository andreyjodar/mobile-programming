import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro de Estado'),
        ),
        body: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Nome:', hintText: 'informe o nome do estado'),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Sigla:',
                  hintText: 'Informe a sigla do estado em 2 letras'),
            ),
            DropdownButtonFormField<String>(
              onChanged: (String) {},
              items: [DropdownMenuItem<String>(child: const Text('Teste 1'))],
            ),
            ElevatedButton(
              child: Text('Salvar'),
              onPressed: () {
                print('Salvo');
              },
            )
          ],
        )));
  }

  /*
     */
}
