import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String kelamin;
  late String nowa;
  late String email;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    nama = arguments['nama'];
    alamat = arguments['alamat'];
    kelamin = arguments['kelamin'];
    nowa = arguments['nowa'];
    email = arguments['email'];
  }
}
