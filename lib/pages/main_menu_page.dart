import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/main_menu_controller.dart';
import 'package:flutter_application_2/menus/history.dart';
import 'package:flutter_application_2/menus/home.dart';
import 'package:flutter_application_2/menus/profile.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final MenuController = Get.put(MainMenuController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
      index: MenuController.selectedIndex.value,
      children: MenuController.pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: MenuController.selectedIndex.value,
        onTap: MenuController.changePage,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled), 
          label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.history), 
          label: "History"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: "Profile"),
      ],),
    ));
  }
}
