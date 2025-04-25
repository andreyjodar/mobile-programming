import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/widget/formulario.dart';
import 'package:flutter_application_1/widget/lista.dart';
import 'package:flutter_application_1/widget/widget_cidade.dart';
import 'package:flutter_application_1/widget/widget_estado.dart';
import 'package:flutter_application_1/widget/widget_menu.dart';
import 'package:flutter_application_1/widget/widget_pessoa.dart';
import 'package:flutter_application_1/widget/widget_pessoa_lista.dart';
import 'package:flutter_application_1/widget/widget_produto.dart';
import 'package:flutter_application_1/widget/widget_produto_lista.dart';

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
        Rotas.home: (context) => WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.produto: (context) => const WidgetProduto(),
        Rotas.produtoLista: (context) => WidgetProdutoLista(),
        Rotas.pessoaLista: (context) => WidgetPessoaLista(),
        Rotas.lista: (context) => Lista(),
        Rotas.formulario: (context) => Formulario()
      },
    );
  }
}
