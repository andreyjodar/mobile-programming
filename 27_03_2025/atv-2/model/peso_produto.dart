import 'produto.dart';

class PesoProduto {
  Produto produto;
  double peso;
  void Function() atualizarPeso;

  PesoProduto(this.produto, {required this.peso, required this.atualizarPeso});
}