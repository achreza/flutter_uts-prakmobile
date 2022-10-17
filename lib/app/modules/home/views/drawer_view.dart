import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class DrawerView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
                    controller.data.Nama.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              controller.changeTab(0);
            },
          ),
          ListTile(
            title: Text('List User'),
            onTap: () {
              controller.changeTab(1);
            },
          ),
        ],
      ),
    );
  }
}
