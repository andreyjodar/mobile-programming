// Criando um Produto com Avaliação Crie um objeto de AvaliacaoProduto com referência anônima
import '../model/avaliacao_produto.dart';
import '../model/categoria_produto.dart';
import '../model/fornecedor.dart';
import '../model/produto.dart';
import '../model/tipo_produto.dart';
import '../model/unidade_medida.dart';

void main() {
  var fornecedor = Fornecedor(
    'Carmem Rosa', 
    '16.781.661/0001-86', 
    'Avenida Rubens Neto', 
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  var tipoProduto = TipoProduto(
    'Plantas', 
    exibirTipo: () {
      print('Tipo: Plantas');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Flores', 
    'Flores Naturais', 
    exibirCategoria: () {
      print('Categoria: Flores Naturais');
    }
  );

  var unidadeMedida = UnidadeMedida(
    'Buquê', 
    simbolo: 'bq', 
    atualizarUnidade: () {
      print('Unidade foi Atualizada');
    }
  );

  var produto = Produto(
    'Buquê de Rosas', 
    75.0, 
    tipoProduto, 
    categoriaProduto, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  var avaliacaoProduto = AvaliacaoProduto(produto, 
    5, 
    'Muito Bonito', 
    registrarAvaliacao: () {
      print('Avaliação foi Registrada');
    }
  );

  avaliacaoProduto.registrarAvaliacao();
}