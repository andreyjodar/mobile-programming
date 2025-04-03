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