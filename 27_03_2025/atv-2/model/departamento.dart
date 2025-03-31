import 'funcionario.dart';

class Departamento {
  String nome;
  Funcionario gerente;
  void Function() acaoDepartamento;

  Departamento(this.nome, this.gerente, {required this.acaoDepartamento});
}