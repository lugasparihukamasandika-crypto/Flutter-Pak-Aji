import 'package:flutter/material.dart';
import 'package:flutter_application_2/kalkulator_clone_page.dart';
import 'package:flutter_application_2/kalkulator_page.dart';
import 'package:flutter_application_2/login_clone.dart';
import 'package:flutter_application_2/login_page.dart';
import 'package:flutter_application_2/pages/login_clone_fix.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: KalkulatorClonePage()
    );
  }
}
