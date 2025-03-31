import 'pedido_compra.dart';

class PedidoCompraPagamento {
  PedidoCompra pedidoCompra;
  double valorPago;
  DateTime data;
  void Function() realizarPagamentoCompra;
  
  PedidoCompraPagamento(this.pedidoCompra, {required this.valorPago, required this.data, required this.realizarPagamentoCompra});
}
