class Cidade {
  String nome;
  String estado;
  void Function(String) alterarEstado;

  Cidade(this.nome, this.estado, {required this.alterarEstado});
}