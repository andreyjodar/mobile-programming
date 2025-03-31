import 'categoria_produto.dart';
import 'fornecedor.dart';
import 'tipo_produto.dart';
import 'unidade_medida.dart';

class Produto {
  String nome;
  double preco;
  TipoProduto tipo;
  CategoriaProduto categoria;
  UnidadeMedida unidadeMedida;
  Fornecedor fornecedor;
  void Function() ajustarPreco;

  Produto(this.nome, this.preco, this.tipo, this.categoria, {required this.unidadeMedida, required this.fornecedor, required this.ajustarPreco});
}
