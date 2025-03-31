#### Parte 1
### 1. O que significa o uso do operador ? em Dart ao declarar um atributo de uma classe? Explique com um exemplo
Resposta: O operador ? permite que uma variável receba um valor nulo

## Exemplo
````
import 'dart:io';

void main() {
  String? pessoa = stdin.readLineSync();
}
````
### 2. No código abaixo, há um erro. Qual é ele? Como corrigir?
Resposta: Caso não seja implementado um construtor, o erro está em considerar o atributo ano como não nulo. Nesse caso, o atributo ano deve ter o operador ? em sua tipagem
````
class Carro {
  String? marca;
  int? ano;
}
````

### 3. Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:
````
class Produto {
  String? nome;
  double? preco;
}
````

### 4. Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:
````
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}

class Produto {
  String? nome;
  double? preco;
}
````

#### Parte 2
### 5. Explique a diferença entre ? e late na declaração de atributos em Dart.
Resposta: O operador ? permite que uma variável receba um valor nulo. O modificador late não permite a atribuição nula, mas faz a atribuição tardiamente, não obrigando a atribuição pelo construtor da classe.

### 6. No código abaixo, o que acontecerá se tentarmos acessar pessoa.idade antes de atribuir um valor? Justifique.
Resposta: Ele apresentará o erro de execução: LateInitializationError, pois o modificador late permite a atribuição tardia, entretanto nada foi atribuido. Por isso não é possível acessar pessoa.nome antes de atribuir um valor a pessoa.nome.
````
class Pessoa {
  late int idade;
}
````
### 7. Modifique a classe Funcionario abaixo para utilizar late corretamente e evitar problemas de inicialização:
Resposta: para evitar o erro de inicialização um construtor deve ser implementado
Exemplo:
````
class Funcionario {
  late String nome;
  late double salario;

  Funcionario({
    required this.nome,
    required this. salario
  });
}
````

#### Parte 3
### 8. Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados na criação do objeto.
````
class Aluno {
  String nome;
  double nota;

  Aluno(
    this.nome,
    this.nota
  );
}
````

### 9. Qual a vantagem de utilizar um construtor em vez de definir atributos com ? ou late?
Resposta: Evita erros de compilação relacionados ao padrão Null Safety, uma vez que você pode tratar parâmetros como obrigatórios, obrigando sua inicialização. Por isso, o construtor também é ideal para evitar erros de execução como o LateInitializationError.

### 10. Modifique o código abaixo para utilizar parâmetros nomeados no construtor:
````
class Endereco {
  String rua;
  String cidade;
  
  Endereco({
    required this.rua, 
    required this.cidade
  });
}
````

#### Parte 4
### 11. O que são métodos get e set em Dart? Para que servem?
Resposta: Métodos get e set em Dart são usados para tratar atributos privados, entretanto eles só são relevantes em Dart em contextos de validação

### 12. Implemente um getter para a classe Retangulo que calcule a área automaticamente:
````
class Retangulo {
  double largura;
  double altura;
  
  Retangulo(
    this.largura,
    this.altura
  );

  double get area => this.largura * this.altura;
}
````

### 13. Modifique a classe abaixo para que o set de idade não permita valores negativos:
````
class Pessoa {
  int _idade;

  Pessoa._(this._idade);

  factory Pessoa(int idade) {
    if(idade < 0) throw Exception('Idade Inválida');
    return Pessoa._(idade);
  }

  set idade(int idade) {
    if(idade < 0) throw new Exception('Idade Inválida');
    _idade = idade;
  }

  int get idade => _idade;
}
````

### 14. Modifique a classe abaixo para que o set de idade não permita valores negativos:
````
class Pessoa {
  double _peso;

  Pessoa._(this._peso);

  factory Pessoa(double peso) {
    if(peso < 0) throw Exception('Peso Inválido');
    return Pessoa._(peso);
  }

  set peso(double novoPeso) {
    if (novoPeso < 0) throw new Exception('Peso Inválido');
    _peso = novoPeso;
  }
  
  double get peso => _peso;
}
````

#### Parte 5
### 15. Crie uma classe ContaBancaria que possua os atributos titular, saldo e um método depositar(double valor). O saldo deve ser alterado apenas pelo método.
### 16. Modifique a classe ContaBancaria da questão anterior, adicionando um método sacar(double valor), garantindo que o saldo não fique negativo.
### 17. Reescreva a classe Carro para utilizar construtores nomeados que permitam criar um carro novo (zeroKm) ou usado (usado com ano definido).
### 18. Implemente uma classe Aluno que possua um método que retorne se o aluno está aprovado ou reprovado, considerando a média mínima de 7.
### 19. Crie uma classe Produto que tenha um atributo preco e aplique um desconto fixo de 10% ao chamar um método aplicarDesconto().
### 20. Crie um programa que utilize tudo o que foi aprendido, simulando um sistema de cadastro de pessoas, onde o usuário pode inserir nome, idade e peso, com validação dos dados antes de exibi-los na tela.




