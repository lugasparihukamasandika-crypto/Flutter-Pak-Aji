import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_application_2/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter PPLG 3",
      initialRoute: Routes.mainDrawer,
      getPages: Routes.myPages,
    );
  }
}
