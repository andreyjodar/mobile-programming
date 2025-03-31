import 'cliente.dart';
import 'produto.dart';

class Venda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  DateTime dataVenda;
  void Function() registrarVenda;

  Venda(this.cliente, this.produto, this.quantidade, this.dataVenda, {required this.registrarVenda});
}