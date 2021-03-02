class Challenge {
  String tentarEncher(int total, List garrafas) {
    garrafas.sort();

    var sortedGarrafas = garrafas.reversed;
    var litrosGalao = 0.0;
    var garrafasUtilizadas = [];
    var sobra = 0.0;

    for (var garrafa in sortedGarrafas) {
      if (litrosGalao + garrafa <= total) {
        litrosGalao += garrafa;
        garrafasUtilizadas.add(garrafa);
      }
    }

    if (litrosGalao != total) {
      for (var garrafa in sortedGarrafas) {
        if (garrafasUtilizadas.contains(garrafa)) continue;
        if (litrosGalao + garrafa > total) {
          litrosGalao += garrafa;
          sobra = litrosGalao - total;
          garrafasUtilizadas.add(garrafa);
          break;
        }
      }
    }
    return 'Garrafas Utilizadas: ${garrafasUtilizadas.length}\nVolumes: $garrafasUtilizadas\nSobra: $sobra';
  }
}
