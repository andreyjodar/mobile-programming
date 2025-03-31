class Estado {
  String nome;
  String pais;
  void Function() mudarPais;

  Estado(this.nome, {required this.pais, required this.mudarPais});
}