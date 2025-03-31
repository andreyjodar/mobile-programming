class Carro {
  String _marca;
  String _modelo;
  int _ano;

  Carro._(this._marca, this._modelo, this._ano);

  factory Carro({ required String marca, required String modelo, int ano = 0}) {
    if(marca.isEmpty) throw Exception('Marca Inválida');
    if(modelo.isEmpty) throw Exception('Modelo Inválido');
    if(ano > DateTime.now().year) throw Exception('Ano Inválido');
    return Carro._(marca, modelo, ano);
  }

  String get marca => _marca;
  String get modelo => modelo;
  int get ano => ano;
}