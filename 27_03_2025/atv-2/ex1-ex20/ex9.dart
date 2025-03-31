// Criando um Produto com Desconto Crie um objeto de ProdutoDesconto com função anônima para aplicar o desconto.
import '../model/categoria_produto.dart';
import '../model/fornecedor.dart';
import '../model/produto.dart';
import '../model/produto_desconto.dart';
import '../model/tipo_produto.dart';
import '../model/unidade_medida.dart';

void main() {
  var tipoProduto = TipoProduto(
    'Brinquedo', 
    exibirTipo: () {
      print('Tipo: Brinquedo');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Infantil', 
    'Brinquedo Infantil', 
    exibirCategoria: () {
      print('Categoria: Infantil');
    }
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade', 
    simbolo: 'un', 
    atualizarUnidade: () {
      print('Unidade foi Atualizada');
    }
  );

  var fornecedor = Fornecedor(
    'Ellen Barreto', 
    '14.331.998/0001-22', 
    'Avenida Getúlio Vargas', 
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  var produto = Produto(
    'Lego Star Wars', 
    300.0, 
    tipoProduto, 
    categoriaProduto, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  var produtoDesconto = ProdutoDesconto(
    produto, 
    0.1, 
    DateTime.now(), 
    DateTime.now().add(Duration(days: 15)), 
    aplicarDesconto: () {
      print('Desconto foi Aplicado');
    }
  );

  produtoDesconto.aplicarDesconto();
}