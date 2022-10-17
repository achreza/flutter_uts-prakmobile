import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts_prakmobile/app/modules/models/users.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  var listPengguna = listUser;

  var usernameController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;

  void validasi() {
    var valusername;
    var valpassword;
    UserModel? datauser;
    for (var element in listPengguna) {
      if (element.Username == usernameController.value.text) {
        valusername = true;
        if (element.Password == passwordController.value.text) {
          valpassword = true;
          datauser = element;
          break;
        } else {
          valpassword = false;
        }
      } else {
        valusername = false;
      }
    }

    if (valusername == true && valpassword == true) {
      Get.snackbar('Login Berhasil', 'Selamat Datang');
      Get.offAndToNamed('/home', arguments: datauser);
    } else {
      Get.snackbar('Login Gagal', 'Username atau Password Salah');
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
