import 'package:flutter_application_2/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  RxList<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "iPhone 14 Pro Max",
      harga: "Rp. 12.000.000",
      deskripsi: "iPhone 14 Pro Max adalah smartphone terbaru dari Apple dengan fitur canggih dan desain elegan.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe8VV3ci6D2O5qM5SpKUgSwOc9ZIfN22ZlLWtSh1jBwQ&s=10",
      rating: 4.8,
      namaToko: "Apple Store",
    ),
    ProdukModel(
      namaProduk: "Laptop ROG Strix",
      harga: "Rp. 26.000.000",
      deskripsi: "Laptop gaming ROG Strix dengan performa tinggi dan desain futuristik.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8ue5eGeZUXV46SJC4QoaSq20nyyIqf4_C9ZHVtdyCEg&s=10",
      rating: 4.7,
      namaToko: "ROG Official Store",
    ),
    ProdukModel(
      namaProduk: "PlayStation 5",
      harga: "Rp. 8.000.000",
      deskripsi:
          "Konsol game generasi terbaru dari Sony dengan grafis menakjubkan.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWQJRHW6WFXXnpgheTA6vHti3e1kRlbSTbyzIgcC08AA&s=10",
      rating: 4.9,
      namaToko: "Sony Store",
    ),
    ProdukModel(
      namaProduk: "Smart TV",
      harga: "Rp. 2.000.000",
      deskripsi: "Smart TV dengan layar besar dan kualitas gambar yang tajam.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4FWfH8VGMpp3TCSjl3iYeB1axKjIGXzUFcU2wQpVxdQ&s=10",
      rating: 4.6,
      namaToko: "Samsung Store",
    ),
    ProdukModel(
      namaProduk: "Samsung Galaxy S23",
      harga: "Rp. 10.000.000",
      deskripsi: "Smartphone terbaru dari Samsung dengan kamera yang canggih.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcif82xV7L_bLtpUwbm14SqwcaMj1eaYFMesIbgdwb7w&s=10",
      rating: 4.8,
      namaToko: "Samsung Store",
    ),
    // dan lain lain
  ].obs;

  RxList<ProdukModel> produkList = <ProdukModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    produkList.value = listProduk;
  }

  Future<void> fetchProduk() async {
    await Future.delayed(const Duration(seconds: 2));
    produkList.assignAll(listProduk);
  }
}
