import 'produto.dart';

class PrecoProduto {
  Produto produto;
  double precoVenda;
  double precoCusto;
  double margemLucro;
  void Function() calcularMargemLucro;

  PrecoProduto(this.produto, this.precoVenda, this.precoCusto, this.margemLucro, {required this.calcularMargemLucro});
}