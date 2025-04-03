// Criando um Pedido de Compra com Frete Crie um objeto de PedidoCompraFrete com função anônima para calcular o frete
import '../../model/categoria_produto.dart';
import '../../model/fornecedor.dart';
import '../../model/pedido_compra.dart';
import '../../model/pedido_compra_frete.dart';
import '../../model/produto.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var categoriaProduto = CategoriaProduto(
    'Massas', 
    'Produto para Consumo', 
    exibirCategoria: () => print('Categoria: Alimentar')
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade', 
    simbolo: 'un', 
    atualizarUnidade: () => print('Unidade foi Atualizada')
  );

  var tipoProduto = TipoProduto(
    'Alimentar', 
    exibirTipo: () => print('Categoria: Massas')
  );

  var fornecedor = Fornecedor(
    'Maurício', 
    '19.615.881/0001-61', 
    'Rua Vinícius de Moraes Nº39', 
    acaoFornecedor: () => print('Ação foi Realizada')
  );

  var produto = Produto(
    'Macarrão', 
    14.90, 
    tipoProduto, 
    categoriaProduto, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () => print('Preço foi Ajustado')
  );

  var pedidoCompra = PedidoCompra(
    fornecedor, 
    produto, 
    1, 
    realizarCompra: () => print('Compra foi Realizada')
  );
  
  var pedidoCompraFrete = PedidoCompraFrete(
    pedidoCompra, 
    4.0, 
    DateTime.now(), 
    calcularFrete: () => print('Frete foi Calculado')
  );

  pedidoCompraFrete.calcularFrete();
}