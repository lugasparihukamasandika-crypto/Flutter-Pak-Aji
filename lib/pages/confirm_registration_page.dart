import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/confirm_registration_controller.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Data Registrasi",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: controller.nama.toString(),
                ),
                decoration: InputDecoration(
                  labelText: "Nama",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: controller.alamat.toString(),
                ),
                decoration: InputDecoration(
                  labelText: "Alamat",
                  prefixIcon: Icon(Icons.home),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: controller.kelamin.toString(),
                ),
                decoration: InputDecoration(
                  labelText: "Jenis Kelamin",
                  prefixIcon: Icon(Icons.wc),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: controller.nowa.toString(),
                ),
                decoration: InputDecoration(
                  labelText: "Nomor WA",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(
                readOnly: true,
                controller: TextEditingController(
                  text: controller.email.toString(),
                ),
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "Berhasil",
                      "Registrasi berhasil!",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.green,
                      colorText: Colors.white,
                      margin: const EdgeInsets.all(10),
                      duration: const Duration(seconds: 2),
                    );
                  },
                  child: Text("Berhasil Bos Kuh"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
