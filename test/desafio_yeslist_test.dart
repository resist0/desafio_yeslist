import 'package:desafio_yeslist/desafio_yeslist.dart';
import 'package:test/test.dart';

void main() {
  Challenge sut;
  int total;
  List garrafas;

  setUp(() {
    sut = Challenge();
    total = 7;
    garrafas = [1, 3, 4.5, 1.5, 3.5];
  });

  test('Should return correct values', () {
    expect(sut.tentarEncher(total, garrafas),
        'Garrafas Utilizadas: [4.5, 1.5, 1]\n' 'Sobra: 0.0');
  });
}
