import 'dart:math';

void main() {
  double radius = 4.0; 
  double keliling, luas;

  keliling = 2 * pi * radius;

  luas = pi * pow(radius, 2);

  print('Keliling lingkaran dengan radius $radius adalah $keliling');
  print('Luas lingkaran dengan radius $radius adalah $luas');
}
