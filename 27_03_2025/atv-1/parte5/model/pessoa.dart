class Pessoa {
  String _nome = 'Desconhecido';
  int _idade = 0;
  double _peso = 0.0;

  Pessoa({String? nome, int idade = 0, double peso = 0.0}) {
    this.nome = nome; 
    this.idade = idade; 
    this.peso = peso; 
  }

  set nome(String? valor) {
    _nome = (valor != null && valor.isNotEmpty) ? valor : 'Desconhecido';
  }

  String get nome => _nome;

  set idade(int valor) {
    _idade = (valor >= 0) ? valor : 0;
  }

  int get idade => _idade;

  set peso(double valor) {
    _peso = (valor >= 0) ? valor : 0.0;
  }

  double get peso => _peso;
}