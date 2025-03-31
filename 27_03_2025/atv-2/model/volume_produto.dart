import 'produto.dart';

class VolumeProduto {
  Produto produto;
  double volume;
  void Function() ajustarVolume;

  VolumeProduto(this.produto, {required this.volume, required this.ajustarVolume});
}