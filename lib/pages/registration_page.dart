import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_textfield.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController txtNama = TextEditingController();
  final TextEditingController txtAlamat = TextEditingController();
  final TextEditingController txtNomerwa = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();

  String kelamin = 'Laki-laki';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              MyTextField(
                myHint: 'input nama?',
                txtController: txtNama,
                radius: 10,
                hint: 'input nama?',
              ),
              const SizedBox(height: 10),
              MyTextField(
                myHint: 'alamat mu?',
                txtController: txtAlamat,
                radius: 10,
                hint: 'alamat mu?',
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Jenis Kelamin',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RadioGroup<String>(
                groupValue: kelamin,
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      kelamin = value;
                    });
                  }
                },
                child: Column(
                  children: [
                    RadioListTile<String>(
                      title: const Text('Laki-laki'),
                      value: 'Laki-laki',
                    ),
                    RadioListTile<String>(
                      title: const Text('Perempuan'),
                      value: 'Perempuan',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              MyTextField(
                myHint: 'nomer wa mu?',
                txtController: txtNomerwa,
                radius: 10,
                hint: 'nomer wa mu?',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10),
              MyTextField(
                myHint: 'alamat gmail mu?',
                txtController: txtEmail,
                radius: 10,
                hint: 'alamat gmail mu?',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      Routes.confirmRegistration,
                      arguments: {
                        'nama': txtNama.text,
                        'alamat': txtAlamat.text,
                        'kelamin': kelamin,
                        'nowa': txtNomerwa.text,
                        'email': txtEmail.text,
                      },
                    );
                  },
                  child: const Text('Send'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    txtNama.dispose();
    txtAlamat.dispose();
    txtNomerwa.dispose();
    txtEmail.dispose();
    super.dispose();
  }
}

