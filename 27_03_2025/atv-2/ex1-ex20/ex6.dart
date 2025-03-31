// Criando um Pedido de Compra Crie um objeto de PedidoCompra com função anônima para realizar a compra.
import '../model/categoria_produto.dart';
import '../model/fornecedor.dart';
import '../model/pedido_compra.dart';
import '../model/produto.dart';
import '../model/tipo_produto.dart';
import '../model/unidade_medida.dart';

void main() {
  var fornecedor = Fornecedor(
    'Jonas Rein', 
    '15.536.662/0002-44',
    'Rua Luis Prestes Nº221',
    acaoFornecedor: () {
      print('Ação foi realizada');
    }
  );

  var tipoProduto = TipoProduto(
    'Eletrodoméstico', 
    exibirTipo: () {
      print('Tipo: Eletrodoméstico');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Refrigeração', 
    'Produto de Refrigeração', 
    exibirCategoria: () {
      print('Categoria: Refrigeração');
    }
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade',
    simbolo: 'un', 
    atualizarUnidade: () {
      print('Unidade foi Atualizada');
    }
  );

  var produto = Produto(
    'Geladeira Brastemp', 
    8000.0, 
    tipoProduto, 
    categoriaProduto, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  var pedidoCompra = PedidoCompra(
    fornecedor, 
    produto, 
    1, 
    realizarCompra: () {
      print('Compra foi Realizada');
    }
  );

  pedidoCompra.realizarCompra();
}