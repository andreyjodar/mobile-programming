import 'dart:io';

import 'model/conta_bancaria.dart';

void main() {
  ContaBancaria conta_bancaria = ContaBancaria('Carlos', 0.0);
  print('Saldo: ${conta_bancaria.saldo}');
  conta_bancaria.depositar(300);
  print('Saldo: ${conta_bancaria.saldo}');
  conta_bancaria.sacar(20);
  print('Saldo: ${conta_bancaria.saldo}');
  conta_bancaria.sacar(300);
}