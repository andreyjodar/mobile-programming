// Criando um Produto com Referência Anônima Crie um objeto de Produto com referência anônima. 
// Defina o preço e categoria de forma simples
import '../../model/categoria_produto.dart';
import '../../model/fornecedor.dart';
import '../../model/produto.dart';
import '../../model/tipo_produto.dart';
import '../../model/unidade_medida.dart';

void main() {
  var fornecedor = Fornecedor(
    'Fabio Lima',
    '61.987.161/0001-09',
    'Avenida Rocha Pombo Nº317',
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  var categoriaProduto = CategoriaProduto(
    'Profissional',
    'Instrumento Profissional',
    exibirCategoria: () {
      print('Categoria: Profissional');
    }
  );

  var unidadeMedida = UnidadeMedida(
    'Unidade', 
    simbolo: 'un', 
    atualizarUnidade: () {
      print('Unidade foi Atualizada');
    }
  );

  var tipoProduto = TipoProduto(
    'Instrumento Musical',
    exibirTipo: () {
      print('Tipo: Instrumento Musical');
    }
  );

  var produto = Produto(
    'Violão Taylor',
    13000.0,
    tipoProduto,
    categoriaProduto,
    unidadeMedida: unidadeMedida,
    fornecedor: fornecedor,
    ajustarPreco: () {
      print('Preço foi Ajustado');
    }
  );

  print('Nome: ${produto.nome}');
}

/* --- Solução Alternativa Aninhado Anônimo ---
Produto produto = Produto(
  'Violão Taylor', 
  13000.0, 
  TipoProduto(
    'Instrumento Musical',
    exibirTipo: () {
      print('Tipo: Instrumento Musical');
    }
  ), 
  CategoriaProduto(
    'Profissional',
    'Instrumento Profissional',
    exibirCategoria: () {
      print('Categoria: Profissional');
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
    nome: 'Fabio Lima',
    cnpj: '61.987.161/0001-09',
    endereco: 'Avenida Rocha Pombo Nº317',
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  ), 
  ajustarPreco: () {
    print('Preço foi Ajustado');
  }
);
*/ 