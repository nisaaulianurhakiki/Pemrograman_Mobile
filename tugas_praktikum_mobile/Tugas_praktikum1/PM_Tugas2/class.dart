class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    double totalBeratMuatan = muatan.map((h) => h.berat).fold(0, (a, b) => a + b);
    if (kapasitas >= totalBeratMuatan + hewan.berat) {
      muatan.add(hewan);
      print('${hewan.berat} kg hewan ditambahkan ke dalam muatan.');
    } else {
      print('Kapasitas muatan tidak mencukupi.');
    }
  }

  double totalMuatan() {
    return muatan.map((h) => h.berat).fold(0, (a, b) => a + b);
  }
}

void main() {
  Mobil mobil = Mobil(500); 
  Hewan hewan1 = Hewan(100);
  Hewan hewan2 = Hewan(200); 
  Hewan hewan3 = Hewan(150); 

  mobil.tambahMuatan(hewan1); 
  mobil.tambahMuatan(hewan2);
  mobil.tambahMuatan(hewan3);

  print('Total muatan dalam mobil: ${mobil.totalMuatan()} kg');
}
