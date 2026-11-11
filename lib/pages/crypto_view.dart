import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/user_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/controller/user_controller.dart'; // Sesuaikan lokasi folder controller Anda
import 'package:flutter_application_2/models/user_model.dart';          // Sesuaikan lokasi folder model Anda

class CryptoView extends StatelessWidget {
  // Menggunakan final controller dengan Get.put
  final UserController controller = Get.put(UserController());

  CryptoView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.fetchCryptoData();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar Cryptocurrency",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.fetchCryptoData(),
          ),
        ],
      ),
      body: Obx(() {
        // 1. Indikator saat data sedang dimuat
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (controller.cryptoList.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Data crypto tidak ditemukan"),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => controller.fetchCryptoData(),
                  child: const Text("Coba Lagi"),
                ),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            await controller.fetchCryptoData();
          },
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: controller.cryptoList.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              UserModel crypto = controller.cryptoList[index];

              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    crypto.image,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.monetization_on, size: 40),
                  ),
                ),
                title: Text(
                  crypto.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  crypto.symbol.toUpperCase(),
                  style: TextStyle(color: Colors.grey[600]),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$${crypto.currentPrice.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${crypto.priceChangePercentage24H >= 0 ? '+' : ''}${crypto.priceChangePercentage24H.toStringAsFixed(2)}%",
                      style: TextStyle(
                        color: crypto.priceChangePercentage24H >= 0
                            ? Colors.green
                            : Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}