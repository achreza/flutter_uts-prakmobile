import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LandingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'LandingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
