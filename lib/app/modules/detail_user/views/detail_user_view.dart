import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_user_controller.dart';

class DetailUserView extends GetView<DetailUserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailUserView'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Center(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage(controller.data.Foto.toString()),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      controller.data.Nama.toString(),
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(controller.data.Deskripsi.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
