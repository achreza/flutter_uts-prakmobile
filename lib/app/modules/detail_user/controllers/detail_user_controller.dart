import 'package:get/get.dart';

class DetailUserController extends GetxController {
  //TODO: Implement DetailUserController

  final count = 0.obs;
  var data = Get.arguments;

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
