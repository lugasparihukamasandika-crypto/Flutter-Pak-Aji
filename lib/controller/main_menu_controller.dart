import 'package:flutter/material.dart';
import 'package:flutter_application_2/menus/history.dart';
import 'package:flutter_application_2/menus/home.dart';
import 'package:flutter_application_2/menus/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;


  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> pages = [HomePage(), ProfilePage(), HistoryPage()];

}
