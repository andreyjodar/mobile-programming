import 'produto.dart';

class HistoricoPreco {
  Produto produto;
  DateTime dataAlteracao;
  double precoAntigo;
  double precoNovo;
  void Function() registrarAlteracao;

  HistoricoPreco(this.produto, this.dataAlteracao, this.precoAntigo, this.precoNovo, {required this.registrarAlteracao});
}