// Criando um Pedido de Venda com Desconto Crie um objeto de PedidoVendaDesconto com referência anônima para aplicar um desconto no pedido.
import '../../model/categoria_produto.dart';
import '../../model/cliente.dart';
import '../../model/fornecedor.dart';
import '../../model/pedido_venda.dart';
import '../../model/produto.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var fornecedor = Fornecedor(
    'Maria', 
    '51,771,972/0001-36', 
    'Avenida Rocha pombo Nº89', 
    acaoFornecedor: () => print('Ação foi Realizada')
  );
  
  var unidadeMedida = UnidadeMedida(
    'Unidade', 
    simbolo: 'un', 
    atualizarUnidade: () => print('Unidade foi Atualizada')
  );

  var categoria = CategoriaProduto(
    'Eletrodoméstico', 
    'Produto Eletrodoméstico', 
    exibirCategoria: () => print('Categoria: Eletrodoméstico')
  );

  var tipo = TipoProduto(
    'Caseiro', 
    exibirTipo: () => print('Tipo: Caseiro')
  );

  var produto = Produto(
    'Fogão', 
    12000.0, 
    tipo, 
    categoria, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () => print('Preço foi Ajustado') 
  );

  var cliente = Cliente(
    'José', 
    endereco: 'Rua Luis Carlos Prestes Nº39', 
    atualizarEndereco: () => print('Endereço foi Atualizado')
  );

  var pedidoVendaDesconto = PedidoVenda(
    cliente, 
    produto, 
    1, 
    concluirVenda: () => print('Venda foi Concluída')
  );

  pedidoVendaDesconto.concluirVenda();
}