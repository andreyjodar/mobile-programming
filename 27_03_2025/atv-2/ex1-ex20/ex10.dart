// Criando um Pedido de Compra com Frete Crie um objeto de PedidoCompraFrete com função anônima para calcular o frete
import '../model/categoria_produto.dart';
import '../model/fornecedor.dart';
import '../model/pedido_compra.dart';
import '../model/produto.dart';
import '../model/tipo_produto.dart';
import '../model/unidade_medida.dart';

void main() {
  var categoriaProduto = CategoriaProduto(nome, descricao, exibirCategoria: exibirCategoria);
  var unidadeMedida = UnidadeMedida(nome, simbolo: simbolo, atualizarUnidade: atualizarUnidade);
  var tipoProduto = TipoProduto(descricao, exibirTipo: exibirTipo);
  var fornecedor = Fornecedor(nome, cnpj, endereco, acaoFornecedor: acaoFornecedor);
  var produto = Produto(nome, preco, tipoProduto, categoriaProduto, unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: ajustarPreco);
  var pedidoCompra = PedidoCompra(fornecedor, produto, quantidade, realizarCompra: realizarCompra);
}