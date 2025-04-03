// Criando um Funcionario com Referência Anônima Crie um objeto de Funcionario com uma função anônima no parâmetro calculaSalarioBonus.
import '../../model/funcionario.dart';

void main() {
  Funcionario funcionario = Funcionario(
    'Ederson', 
    'Gerente', 
    4700.0, 
    calculaSalarioBonus: (String mensagem) {
      print('Cálculo do bônus: ${mensagem}');
    }
  );

  funcionario.calculaSalarioBonus('teste');
}