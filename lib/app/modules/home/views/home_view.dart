import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uts_prakmobile/app/modules/home/views/drawer_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        drawer: DrawerView(),
        body: TabBarView(
          children: controller.pages,
          controller: controller.tabController,
        ));
  }
}
