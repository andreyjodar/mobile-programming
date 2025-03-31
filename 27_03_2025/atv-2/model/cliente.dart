class Cliente {
  String nome;
  String endereco;
  void Function() atualizarEndereco;

  Cliente(this.nome, {required this.endereco, required this.atualizarEndereco});
}