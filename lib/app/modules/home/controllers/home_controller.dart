import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts_prakmobile/app/modules/home/views/landing_view.dart';
import 'package:uts_prakmobile/app/modules/models/users.dart';

import '../views/home_view.dart';
import '../views/list_view.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController

  final count = 0.obs;

  UserModel data = Get.arguments;

  List<UserModel> listPengguna = listUser;

  final List<Widget> pages = [
    LandingView(),
    ListUserView(),
  ];

  final RxInt tabIndex = 0.obs;
  late TabController tabController;

  void changeTab(int index) {
    tabIndex.value = index;
    tabController.animateTo(index);
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
