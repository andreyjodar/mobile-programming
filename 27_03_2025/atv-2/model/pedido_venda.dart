import 'cliente.dart';
import 'produto.dart';

class PedidoVenda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  void Function() concluirVenda;

  PedidoVenda(this.cliente, this.produto, this.quantidade, {required this.concluirVenda});
}