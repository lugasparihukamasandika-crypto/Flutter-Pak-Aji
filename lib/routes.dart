import 'package:flutter_application_2/kalkulator_clone_page.dart';
import 'package:flutter_application_2/pages/confirm_registration_page.dart';
import 'package:flutter_application_2/pages/detail_produk.dart';
import 'package:flutter_application_2/pages/list_produk_page.dart';
import 'package:flutter_application_2/pages/main_drawer.dart';
import 'package:flutter_application_2/pages/registration_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/pages/main_menu_page.dart';
import 'package:flutter_application_2/pages/login_clone_fix.dart';

class Routes {
  // list pages yang ada di aplikasi
  static const String kalkulator = "/kalkulator";
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainMenu = "/mainMenu";
  static const String mainDrawer = "/mainDrawer";
  static const String loginClone = "/loginClone";
  // dll login , kalkulator

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: kalkulator, page: () => KalkulatorClonePage()),
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProduk()),
    GetPage(name: mainMenu, page: () => MainMenuPage()),
    GetPage(name: mainDrawer, page: () => MainMenuDrawer()),
    GetPage(name: loginClone, page: () => LoginCloneFix()),
    // others page here dll
  ];
}
