import 'dart:math';

double randomBarChartHeight() {
  Random random = Random();
  double randomDouble = random.nextDouble();
  return 350 * randomDouble;
}

double randomPositionValue() {
  Random random = Random();
  double randomDouble = random.nextDouble();
  return 200 * randomDouble;
}
