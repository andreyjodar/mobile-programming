// Criando um Produto com Referência Anônima e Lote Crie um objeto de ProdutoLote com referência anônima e parâmetros nomeados.
import '../../model/categoria_produto.dart';
import '../../model/fornecedor.dart';
import '../../model/produto.dart';
import '../../model/produto_lote.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var tipoProduto = TipoProduto(
    'Alimentício', 
    exibirTipo: () {
      print('Tipo: Alimentício');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Molhos', 
    'Molhos Tradicionais', 
    exibirCategoria: () {
      print('Categoria: Molhos');
    }
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade', 
    simbolo: 'un', 
    atualizarUnidade: () {
      print('Unidade Atualizada');
    }
  ); 

  var fornecedor = Fornecedor(
    'Desmond Ford', 
    '61.887.132/0001-31', 
    'Brooklin Avenue Nº112', 
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  var produto = Produto(
    'Maionese Heinz', 
    16.99, 
    tipoProduto, 
    categoriaProduto, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  var produtoLote = ProdutoLote(
    produto, 
    '13B', 
    DateTime.now(), 
    DateTime.now().add(Duration(days: 32)), 
    verificarLote: () {
      print('Lote foi Verificado');
    }
  );

  produtoLote.verificarLote();
}