import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/rotas.dart';
import 'package:flutter_application_2/widget/widget_botao.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  //metodo - define, repete, parâmetro(não tem, diferentes)
  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
        child: Text(rotulo),
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      criarBotao(context, 'Cadastro de Estado', Rotas.estado),
      criarBotao(context, 'Cadastro de Cidade', Rotas.cidade),
      criarBotao(context, 'Cadastro de Produto', Rotas.produto),
      criarBotao(context, 'Cadastro de Pessoa', Rotas.pessoa),
      WidgetBotao(rota: Rotas.categoria, rotulo: 'Cadastro de Categoria')
    ]);
  }
}
