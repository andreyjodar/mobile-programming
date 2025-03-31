import 'fornecedor.dart';
import 'produto.dart';

class PedidoCompra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, this.produto, this.quantidade, {required this.realizarCompra});
}