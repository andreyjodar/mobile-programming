import 'produto.dart';

class ProdutoLote {
  Produto produto;
  String numeroLote;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarLote;

  ProdutoLote(this.produto, this.numeroLote, this.dataFabricacao, this.dataValidade, {required this.verificarLote});
}