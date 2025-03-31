class Aluno {
  String _nome;
  double _media;

  Aluno._(this._nome, this._media);

  factory Aluno({ required String nome, required double media}) {
    if(nome.isEmpty) throw Exception('Nome Inválido');
    if(media < 0 || media > 10) throw Exception('Média Inválida');
    return Aluno._(nome, media);
  }

  bool get aprovado => _media >= 7;
  double get media => _media;
  String get nome => _nome;
}