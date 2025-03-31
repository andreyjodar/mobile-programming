import 'produto.dart';

class EmbalagemProduto {
  Produto produto;
  String tipoEmbalagem;
  double pesoEmbalagem;
  void Function() alterarEmbalagem;

  EmbalagemProduto(this.produto, {required this.tipoEmbalagem, required this.pesoEmbalagem, required this.alterarEmbalagem});
}