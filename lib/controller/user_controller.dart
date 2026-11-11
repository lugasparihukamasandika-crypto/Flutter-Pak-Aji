import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/models/user_model.dart'; // Sesuaikan path import model Anda
import 'package:get/get.dart';
import 'package:http/http.dart' as http; // Import package http

class UserController extends GetxController {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var cryptoList = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> fetchCryptoData() async {
    try {
      isLoading.value = true;

      final response = await http.get(
        Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&per_page=10',
        ),
      );

      if (response.statusCode == 200) {
        var data = userModelFromJson(response.body);
        cryptoList.assignAll(data);
      } else {
        Get.snackbar(
          "Gagal",
          "Gagal memuat data: ${response.statusCode}",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  void loginUser() async {
    String username = txtUsername.text.trim();
    String password = txtPassword.text.trim();

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "Username dan password harus terisi",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    try {
      isLoading.value = true;
      await Future.delayed(const Duration(milliseconds: 1500));
      isLoading.value = false;
      Get.snackbar(
        "Berhasil",
        "Login Berhasil! Selamat datang, $username",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.offAllNamed(Routes.listProduk);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        "Gagal",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onClose() {
    // Bersihkan controller saat tidak digunakan untuk cegah memory leak
    txtUsername.dispose();
    txtPassword.dispose();
    super.onClose();
  }
}
