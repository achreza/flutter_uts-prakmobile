import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uts_prakmobile/app/modules/models/users.dart';

import 'drawer_view.dart';

class ListUserView extends GetView {
  List<UserModel> data = listUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView.builder(
          itemCount: listUser.length,
          itemBuilder: (context, index) => Card(
                  child: Container(
                height: 100,
                child: Card(
                  color: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                            width: 70,
                            height: 70,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage(data[index].Foto.toString()),
                            )),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          data[index].Nama.toString(),
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Raleway',
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                          child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () =>
                            Get.toNamed('/detail-user', arguments: data[index]),
                        color: Colors.white70,
                      ))
                    ],
                  ),
                ),
              ))),
    ));
  }
}
