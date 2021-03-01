import 'dart:io';
import 'package:meta/meta.dart';

double getGalao() {
  print('Insira os litros do galão: ');
  return double.parse(stdin.readLineSync());
}

int getGarrafas() {
  print('Insira a quantidade de garrafas: ');
  return int.parse(stdin.readLineSync());
}

void checkStatus({
  @required var qnt_garrafa,
  @required var vol_garrafa,
  @required var galao,
  @required var result,
}) {
  for (var i = 1; i < qnt_garrafa + 1; i++) {
    if (galao > 0) {
      print('Tamanho da garrafa $i em Litros: ');
      var litros = double.parse(stdin.readLineSync());
      vol_garrafa.add(litros);

      for (var garrafa in vol_garrafa) {
        if (galao - garrafa >= 0) {
          galao = galao - garrafa;
          result = result + '${garrafa}L ';
          print('------------------------------------');
          print('Usamos as garrafas de: $result');
          print('Restou: ${galao}L');
          print('------------------------------------');
        }
      }
    }
  }
}
