// Classe de Produto com Status de Disponibilidade
import 'produto.dart';

class ProdutoDisponibilidade {
  Produto produto;
  bool disponivel;
  String status;
  void Function() atualizarStatus;

  ProdutoDisponibilidade(this.produto, this.disponivel, this.status, {required this.atualizarStatus});
}