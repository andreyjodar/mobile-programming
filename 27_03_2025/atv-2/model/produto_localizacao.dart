// Classe de Produto com Localização
import 'produto.dart';

class ProdutoLocalizacao {
  Produto produto;
  String corredor;
  String prateleira;
  void Function() atualizarLocalizacao;

  ProdutoLocalizacao(this.produto, this.corredor, this.prateleira, {required this.atualizarLocalizacao});
}