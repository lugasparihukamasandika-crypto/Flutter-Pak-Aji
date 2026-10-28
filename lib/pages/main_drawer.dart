import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/main_drawer_controller.dart';
import 'package:get/get.dart';

class MainMenuDrawer extends StatelessWidget {
  MainMenuDrawer({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Main Menu Drawer',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 106, 20, 234),
        ),
        endDrawer: NavigationDrawer(
          selectedIndex: menuDrawerController.selectedIndex.value,
          onDestinationSelected: (index) {
            menuDrawerController.changePage(index);
            Navigator.pop(context);
          },
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(28, 24, 16, 10),
              child: Text(
                'Select Page',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.person),
              label: Text('Profile'),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.history),
              label: Text('History'),
            ),
          ],
        ),
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.pages,
        ),
      ),
    );
  }
}
