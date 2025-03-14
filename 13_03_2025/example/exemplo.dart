import 'dart:io';

void main() {
  print('Hello World');
  int id;
  String nome;
  int idade;
  double peso;

  String? resposta;
  print('informe seu nome:');
  resposta = stdin.readLineSync()!;
  nome = resposta;
  print('resposta nula');

  print('informe seu idade:');
  resposta = stdin.readLineSync();
  if (resposta != null) {
    try {
      idade = int.parse(resposta);
      print('a sua idade é $idade');
    } catch (e) {
      print('a resposte é nula');
    }
  } else {
    print('resposta nula');
  }

  print('informe seu peso:');
  resposta = stdin.readLineSync()!;
  peso = double.parse(resposta);

  print('o seu nome é $nome');
  print('o seu peso é $peso');
}
