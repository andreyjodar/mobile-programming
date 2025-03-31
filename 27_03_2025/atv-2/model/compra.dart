import 'fornecedor.dart';
import 'produto.dart';

class Compra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  DateTime dataCompra;
  void Function() registrarCompra;

  Compra(this.fornecedor, this.produto, this.quantidade, this.dataCompra, {required this.registrarCompra});
}