// Criando um Fornecedor com Referência Anônima Crie um objeto de Fornecedor usando referência anônima. 
// Utilize parâmetros nomeados no construtor
import '../../model/fornecedor.dart';

void main() {
  Fornecedor fornecedor = Fornecedor(
    'Daniel Ferreira',
    '01.345.763/0001-41',
    'Avenida Reinaldo Alencar',
    acaoFornecedor: () {
      print('Ação foi Realizada');
    }
  );

  print('Fornecedor: ${fornecedor.nome}');
}

