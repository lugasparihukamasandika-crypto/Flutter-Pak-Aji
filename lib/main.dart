import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/kalkulator_clone_page.dart';
import 'package:flutter_application_2/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Belajar Flutter PPLG 3',
      debugShowCheckedModeBanner: false,
      home: KalkulatorClonePage(),
      getPages: Routes.myPages,
    );
  }
}
