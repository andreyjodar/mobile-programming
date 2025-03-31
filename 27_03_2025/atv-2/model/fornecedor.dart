class Fornecedor {
  String nome;
  String cnpj;
  String endereco;
  void Function() acaoFornecedor;

  Fornecedor(this.nome, this.cnpj, this.endereco, {required this.acaoFornecedor});
}