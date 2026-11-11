import 'dart:convert';

import 'package:flutter_application_2/models/login_model.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  Future<void> login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "username & password tidak boleh kosong");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse(
          "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1",
        );

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("berhasil", data['message']);
            Get.offNamed(Routes.mainDrawer);
          } else {
            Get.snackbar("gagal", data['message']);
          }
        } else {
          Get.snackbar("gagal", "cek internet anda");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}

//   void login() async {
//     if (txtUsername.text.toString().isEmpty ||
//         txtPassword.text.toString().isEmpty) {
//       Get.snackbar("error", "username & password tidak boleh kosong");
//     } else {
//       try {
//         isLoading.value = true;
//         final url = Uri.parse("https://mediadwi.com/api/latihan/login");

//         final response = await http.post(
//           url,
//           body: {
//             "username": txtUsername.text.toString(),
//             "password": txtPassword.text.toString(),
//           },
//         );

//         isLoading.value = false;
//         if (response.statusCode == 200) {
//           final data = jsonDecode(response.body);
//           if (data['status'] == true) {
//             Get.snackbar("berhasil", data['message']);
//             Get.offNamed(Routes.mainDrawer);
//           } else {
//             Get.snackbar("gagal", data['message']);
//           }
//         } else {
//           Get.snackbar("gagal", "cek internet anda");
//         }
//       } catch (e) {
//         Get.snackbar("gagal", e.toString());
//       }
//     }
//   }
// }
