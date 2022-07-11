import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ID: ${_controller.photoList[0].albumId}'),
            ],
          ),
        ),
      ),
    );
  }
}
