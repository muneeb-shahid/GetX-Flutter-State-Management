import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../controller/Slider Controller/SliderController.dart';

class Slider_App extends StatefulWidget {
  const Slider_App({super.key});

  @override
  State<Slider_App> createState() => _Slider_AppState();
}

class _Slider_AppState extends State<Slider_App> {
  final Slider_App_Controller _slider_app_controller =
      Get.put(Slider_App_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Application"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              color: Colors.red.withOpacity(
                _slider_app_controller.opacity.value,
              ),
              height: 200,
              width: 200,
            ),
          ),
          Obx(() => Slider(
                value: _slider_app_controller.opacity.value,
                onChanged: (value) {
                  _slider_app_controller.setOpacity(value);
                },
              ))
        ],
      ),
    );
  }
}
