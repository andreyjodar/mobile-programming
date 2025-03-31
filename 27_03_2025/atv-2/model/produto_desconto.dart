import 'produto.dart';

class ProdutoDesconto {
  Produto produto;
  double percentualDesconto;
  DateTime dataInicio;
  DateTime dataFim;
  void Function() aplicarDesconto;

  ProdutoDesconto(this.produto, this.percentualDesconto, this.dataInicio, this.dataFim, {required this.aplicarDesconto});
}