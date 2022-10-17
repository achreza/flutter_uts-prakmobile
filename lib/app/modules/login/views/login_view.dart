import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(() => Column(
                children: [
                  TextFormField(
                    controller: controller.usernameController.value,
                    decoration: InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                  TextFormField(
                    controller: controller.passwordController.value,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.validasi();
                    },
                    child: Text('Login'),
                  ),
                ],
              ))),
    );
  }
}
