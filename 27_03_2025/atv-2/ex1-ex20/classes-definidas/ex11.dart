// Criando um Pedido de Venda com Entrega Crie um objeto de PedidoVendaEntrega com função anônima para organizar a entrega.
import '../../model/categoria_produto.dart';
import '../../model/cliente.dart';
import '../../model/fornecedor.dart';
import '../../model/pedido_venda.dart';
import '../../model/pedido_venda_entrega.dart';
import '../../model/produto.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var fornecedor = Fornecedor(
    'José Almeida', 
    '91.991.716/0001-51', 
    'Rua Josá de Alencar Nº39', 
    acaoFornecedor: () => print('Ação foi realizada')
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade', 
    simbolo: 'un', 
    atualizarUnidade: () => print('Unidade foi Atualizada')
  );

  var categoria = CategoriaProduto(
    'Aéreo', 
    'Veículo Áereo', 
    exibirCategoria: () => print('Categoria: Aéreo')
  );

  var tipoProduto = TipoProduto(
    'Veículo', 
    exibirTipo: () => print('Tipo: Veículo')
  );

  var produto = Produto(
    'Avião Bimotor', 
    4000000.0, 
    tipoProduto, 
    categoria, 
    unidadeMedida: unidadeMedida, 
    fornecedor: fornecedor, 
    ajustarPreco: () => print('Preço foi Ajustado')
  );

  var cliente = Cliente(
    'Ronaldo', 
    endereco: 'Avenida Rubens Alves Nº300', 
    atualizarEndereco: () => print('Endereço foi Atualizado')
  );
  
  var pedidoVenda = PedidoVenda(
    cliente, 
    produto, 
    1, 
    concluirVenda: () => print('Venda foi Concluída')
  );
  
  var pedidoVendaEntrega = PedidoVendaEntrega(
    pedidoVenda, 
    DateTime.now(), 
    'Avenida Rubens Alves', 
    organizarEntrega: () => print('Entrega foi Organizada')
  );  

  pedidoVendaEntrega.organizarEntrega();
}