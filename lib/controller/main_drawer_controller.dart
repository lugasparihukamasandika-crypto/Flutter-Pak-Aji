import 'package:flutter/material.dart';
import 'package:flutter_application_2/menus/history.dart';
import 'package:flutter_application_2/menus/home.dart';
import 'package:flutter_application_2/menus/profile.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class  MenuDrawerController extends GetxController { 
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
  List<Widget> pages = [
     HomePage(),
     ProfilePage(),
     HistoryPage(),
  ];

}