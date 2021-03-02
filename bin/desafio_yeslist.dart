import 'package:desafio_yeslist/desafio_yeslist.dart';

void main(List<String> arguments) {
  // Insira o valor Aqui
  var totalLitrosGal = 7;

  // Insira aqui a quantidade de garrafas, cada index é o litro de uma garrafa
  var garrafas = [1, 3, 4.5, 1.5, 3.5];

  final result = Challenge().tentarEncher(totalLitrosGal, garrafas);
  print(result);
}
