import '../model/categoria_produto.dart';
import '../model/cliente.dart';
import '../model/fornecedor.dart';
import '../model/pedido_compra.dart';
import '../model/pedido_compra_frete.dart';
import '../model/pedido_compra_pagamento.dart';
import '../model/pedido_venda.dart';
import '../model/produto.dart';
import '../model/tipo_produto.dart';
import '../model/unidade_medida.dart';

void main() {
  // Exemplo 1
  Fornecedor fornecedor = Fornecedor(
    "Carlinhos",
    "10.445.990/0001-83",
    "Rua Ulisses Maia Nº300",
    acaoFornecedor: () {
      print("Ação foi Realizada");
    }
  );

  print('Nome: ${fornecedor.nome}');
  fornecedor.acaoFornecedor();

  // Exemplo 2
  Produto produto = Produto(
    'Mustang Black Shadow',
    400.00,
    TipoProduto(
      'Exclusivo',
      exibirTipo: () {
        print('Tipo: Exclusivo');
      }
    ),
    CategoriaProduto(
      'Veículo',
      'Veículo Automotivo',
      exibirCategoria: () {
        print('Categoria: Veículo');
      }
    ),
    unidadeMedida: UnidadeMedida(
      'Unidade', 
      simbolo: 'un',
      atualizarUnidade: () {
        print('Unidade Atualizada');
      }
    ),
    fornecedor: Fornecedor(
      'Carlos Silva',
      '18.834.781/0001-65',
      'Avenida Dr. Rubens Neto',
      acaoFornecedor: () {
        print("Ação foi Realizada");
      }
    ),
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  print('Nome Produto: ${produto.nome}');
  produto.ajustarPreco();

  // Exemplo 3
  PedidoVenda pedidoVenda = PedidoVenda(
    Cliente(
      'Anderson',
      endereco: 'Rua Domingues da Costa',
      atualizarEndereco: () {
        print('Endereço foi Atualizado');
      }
    ),
    Produto(
      'Notebook Visio',
      5000.0,
      TipoProduto(
        'Elétrico',
        exibirTipo: () {
          print('Tipo: Elétrico');
        }
      ),
      CategoriaProduto(
        'Laptop',
        'Laptop Tecnológico',
        exibirCategoria: () {
          print('Categoria: Laptop');
        }
      ),
      unidadeMedida: UnidadeMedida(
        'Unidade',
        simbolo: 'un',
        atualizarUnidade: () {
          print('Unidade foi Atualizada');
        }
      ),
      fornecedor: Fornecedor(
        'Daiane',
        '14.008.671/0003-62',
        'Rua Carlos Prestes Nº300',
        acaoFornecedor: () {
          print("Ação foi Realizada");
        }
      ),
      ajustarPreco: () {
        print('Preço foi Ajustado');
      }
    ), 
    1,
    concluirVenda: () {
      print('Venda foi Concluída');
    }
  );

  print('Cliente: ${pedidoVenda.cliente.nome}');
  print('Produto: ${pedidoVenda.produto.nome}');
  print('Quantidade: ${pedidoVenda.quantidade}');
  pedidoVenda.concluirVenda();

  // Exemplo 4
  PedidoCompra pedidoCompra = PedidoCompra(
    Fornecedor(
      'Jurandir',
      '89.334.557/0001-71',
      'Rua Dorneles Garcia',
      acaoFornecedor: () {
        print('Ação foi Realizada');
      }
    ), 
    Produto(
      'Avião Bimotor',
      2000000.0,
      TipoProduto(
        'Veículo',
        exibirTipo: () {
          print('Tipo: Veículo');
        }
      ),
      CategoriaProduto(
        'Automotivo Aéreo',
        'Veículo Automotivo Aéreo',
        exibirCategoria: () {
          print('Categoria: Automotivo Aéreo');
        }
      ),
      unidadeMedida: UnidadeMedida(
        'Unidade',
        simbolo: 'un',
        atualizarUnidade: () {
          print('Unidade foi Atualizada');
        }
      ),
      fornecedor: Fornecedor(
        'Jurandir',
        '89.334.557/0001-71',
        'Rua Dorneles Garcia',
        acaoFornecedor: () {
          print('Ação foi Realizada');
        }
      ),
      ajustarPreco: () {
        print('Preço foi Ajustado');
      }
    ), 
    2, 
    realizarCompra: () {
      print('Compra foi Realizada');
    }
  );

  PedidoCompraFrete pedidoCompraFrete = PedidoCompraFrete(
    pedidoCompra,
    3000,
    DateTime.now(), 
    calcularFrete: () {
      print('Frete foi Calculado');
    }
  );

  PedidoCompraPagamento pedidoCompraPagamento = PedidoCompraPagamento(
    pedidoCompra,
    valorPago: 4004000.0,
    data: DateTime.now(),
    realizarPagamentoCompra: () {
      print('Pagamento da Compra foi Realizado');
    }
  );

  print('Fornecedor: ${pedidoCompra.fornecedor.nome}');
  print('Produto: ${pedidoCompra.produto.nome}');
  print('Quantidade: ${pedidoCompra.quantidade}');

  pedidoCompraFrete.calcularFrete();
  pedidoCompraPagamento.realizarPagamentoCompra();
}


