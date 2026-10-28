import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/list_produk_controller.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Produk')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];

            return Card(
              margin: const EdgeInsets.symmetric(vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () {
                  Get.toNamed(Routes.detailProduk, arguments: {
                    'namaProduk': produk.namaProduk,
                    'harga': produk.harga,
                    'deskripsi': produk.deskripsi,
                    'gambar': produk.gambar,
                    'rating': produk.rating,
                    'namatoko': produk.namaToko,
                  });
                },
                child: ListTile(
                  title: Text(produk.namaProduk),
                  subtitle: Text(produk.harga),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
