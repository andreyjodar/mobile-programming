import 'produto.dart';

class Estoque {
  Produto produto;
  int quantidade;
  void Function() atualizarEstoque;

  Estoque(this.produto, this.quantidade, {required this.atualizarEstoque});
}