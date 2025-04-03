import 'dart:io';

import 'model/produto.dart';

void main() {
  var produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();

  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;

  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}