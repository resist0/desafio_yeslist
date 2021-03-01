import 'package:desafio_yeslist/desafio_yeslist.dart';

var galao;
var qnt_garrafa;
var vol_garrafa = [];
var result = '';

void main(List<String> arguments) {
  galao = getGalao();
  qnt_garrafa = getGarrafas();
  checkStatus(
    qnt_garrafa: qnt_garrafa,
    vol_garrafa: vol_garrafa,
    galao: galao,
    result: result,
  );
}
