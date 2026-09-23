import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_textfield.dart';
import 'package:flutter_application_2/controller/kalkulator_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/utils.dart';

class KalkulatorClonePage extends StatelessWidget {
  KalkulatorClonePage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Column(
        children: [
          MyTextField(
            myHint: "input angka 1",
            keyboardType: TextInputType.number,
            txtController: txtangka1,
            radius: 10,
            hint: "input angka 1",
          ),
          MyTextField(
            myHint: "input angka 2",
            keyboardType: TextInputType.number,
            txtController: txtangka2,
            radius: 10,
            hint: "input angka 2",
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Input angka tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  controller.tambah(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("Tambah"), 
              ),

              ElevatedButton(
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Input angka tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  controller.kurang(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("Kurang"), 
              ),

              ElevatedButton(
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Input angka tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  controller.kali(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("Kali"), 
              ),

              ElevatedButton(
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Input angka tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  controller.bagi(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("Bagi"), 
              ),

              ElevatedButton(
                onPressed: () {
                  txtangka1.clear();
                  txtangka2.clear();
                  controller.hasilHitung.value = 0.0;
                },
                child: Text("Clear"), 
              ),
            ],
          ),
         Padding(
        padding: const EdgeInsets.all(16.0),
         child: Obx(
          () => Text(
          controller.hasilHitung.value.toString(),
          style: TextStyle(fontSize: 20),
        ),
     ),
    ),
  ],
),
);
}
}