import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/rotas.dart';
import 'package:flutter_application_2/widget/widget_categoria.dart';
import 'package:flutter_application_2/widget/widget_cidade.dart';
import 'package:flutter_application_2/widget/widget_estado.dart';
import 'package:flutter_application_2/widget/widget_menu.dart';
import 'package:flutter_application_2/widget/widget_pessoa.dart';
import 'package:flutter_application_2/widget/widget_produto.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.produto: (context) => const WidgetProduto(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.categoria: (context) => const WidgetCategoria()
      },
    );
  }
}
