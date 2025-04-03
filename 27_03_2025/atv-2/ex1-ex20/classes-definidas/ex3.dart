// Criando um Pedido de Venda Crie um objeto de PedidoVenda com referência anônima, utilizando parâmetros nomeados.
import '../../model/categoria_produto.dart';
import '../../model/cliente.dart';
import '../../model/fornecedor.dart';
import '../../model/pedido_venda.dart';
import '../../model/produto.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var tipoProduto = TipoProduto(
    'Mochila Média', 
    exibirTipo: () {
      print('Tipo: Mochila Média');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Escolar', 
    'Material Escolar', 
    exibirCategoria: () {
      print('Categoria: Material Escolar');
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
    'Fabio Lima',
    '21.895.771/0003-81',
    'Avenida Rodrigues Borges',
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  var produto = Produto(
    'Mochila',
    300.0,
    tipoProduto,
    categoriaProduto,
    unidadeMedida: unidadeMedida,
    fornecedor: fornecedor,
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  ); 

  var cliente = Cliente(
    'Giovanna', 
    endereco: 'Rua Ulisses Ferreira Nº551', 
    atualizarEndereco: () {
      print('Endereço foi Atualizado');
    }
  );

  var pedidoVenda = PedidoVenda(
    cliente, 
    produto, 
    4, 
    concluirVenda: () {
      print('Venda foi Concluída');
    }
  );

  print('Cliente Venda: ${pedidoVenda.cliente.nome}');
}