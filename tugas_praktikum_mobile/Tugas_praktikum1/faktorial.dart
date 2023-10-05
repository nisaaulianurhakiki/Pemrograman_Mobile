void main() {
  int angka1 = 10;
  int angka2 = 20;
  int angka3 = 30;

  int faktorial1 = hitungFaktorial(angka1);
  int faktorial2 = hitungFaktorial(angka2);
  int faktorial3 = hitungFaktorial(angka3);

  print("Faktorial dari $angka1 adalah $faktorial1");
  print("Faktorial dari $angka2 adalah $faktorial2");
  print("Faktorial dari $angka3 adalah $faktorial3");
}

int hitungFaktorial(int n) {
  if (n == 0) {
    return 1;
  }
  int faktorial = 1;
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  return faktorial;
}
