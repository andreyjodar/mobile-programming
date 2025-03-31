class Produto {
  String nome;
  double preco;

  Produto._({required this.nome, required this.preco});

  factory Produto(String nome, double preco) {
    if(preco <= 0) throw Exception('Preço Inválido');
    return Produto._(nome: nome, preco: preco);
  }

  void aplicarDesconto() {
    preco -= preco * 0.1;
  }
}