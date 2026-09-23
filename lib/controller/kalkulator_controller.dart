import 'package:get/get.dart';

class KalkulatorController extends GetxController {

var hasilHitung = 0.0.obs;

  //method tambah kurang kali dan bagi
  void tambah(double angka1, double angka2) {  
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
  }

  void kurang(double angka1, double angka2) {  
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
  }

  void kali(double angka1, double angka2) {  
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
  }

  void bagi(double angka1, double angka2) {  
    if (angka2 == 0) {
      Get.snackbar("Error", "tidak bisa membagi dengan 0");
      return;
    }
    double hasilBagi = angka1 / angka2;
    hasilHitung.value = hasilBagi;
  }
}