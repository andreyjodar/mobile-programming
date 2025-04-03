// Criando um Estoque de Produto Crie um objeto de Estoque com função anônima para atualizar a quantidade.
import '../../model/categoria_produto.dart';
import '../../model/estoque.dart';
import '../../model/fornecedor.dart';
import '../../model/produto.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var fornecedor = Fornecedor(
    'Thales Roberto', 
    '90.817.836./0001-53', 
    'Rua Jardins Claros', 
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade',
    simbolo: 'un', 
    atualizarUnidade: () {
      print('Unidade foi Atualizada');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Escrita', 
    'Produto de Escrita', 
    exibirCategoria: () {
      print('Categoria: Escolar');
    }
  );

  var tipoProduto = TipoProduto(
    'Escolar', 
    exibirTipo: () {
      print('Tipo: Escolar');
    }
  );
   
  var produto = Produto(
    'Caneta Bic', 
    1.80, 
    tipoProduto, 
    categoriaProduto, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  var estoque = Estoque(
    produto, 
    300, 
    atualizarEstoque: () {
      print('Estoque foi Atualizado');
    }
  );

  estoque.atualizarEstoque();
}