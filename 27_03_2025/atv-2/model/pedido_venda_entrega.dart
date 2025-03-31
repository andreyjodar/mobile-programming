import 'pedido_venda.dart';

class PedidoVendaEntrega {
  PedidoVenda pedidoVenda;
  DateTime dataEntrega;
  String enderecoEntrega;
  void Function() organizarEntrega;

  PedidoVendaEntrega(this.pedidoVenda, this.dataEntrega, this.enderecoEntrega, {required this.organizarEntrega});
}