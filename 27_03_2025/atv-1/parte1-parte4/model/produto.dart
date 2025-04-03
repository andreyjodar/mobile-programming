class Produto {
  String _nome = 'Desconhecido';
  double _preco = 0.0;

  set nome(String? valor) {
    _nome = (valor != null && valor.isNotEmpty) ? valor : 'Desconhecido';
  }

  String get nome => _nome;

  set preco(double valor) {
    _preco = valor >= 0 ? valor : 0.0;
  }

  double get preco => _preco;
}