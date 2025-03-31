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