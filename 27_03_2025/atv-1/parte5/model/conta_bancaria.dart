class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria._(this._titular,this._saldo);

  factory ContaBancaria(String titular, double saldo) {
    if(saldo < 0) throw Exception('Saldo Inválido');
    return ContaBancaria._(titular, saldo);
  }
  
  void depositar(double valor) {
    if(valor <= 0) throw Exception('Depósito Inválido');
    _saldo += valor;
  }

  void sacar(double valor) {
    if(valor <= 0 || _saldo - valor < 0) throw Exception('Saque Inválido');
    _saldo -= valor;
  }

  double get saldo => _saldo;
  String get titular => _titular;
}