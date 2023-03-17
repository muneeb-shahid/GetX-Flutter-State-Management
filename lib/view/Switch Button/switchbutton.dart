import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/controller/Switch%20Button/SwitchButtonController.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  SwitchButtonController _switchButtonController =
      Get.put(SwitchButtonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Button"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Light Theme "),
              Obx(() => Switch(
                    value: _switchButtonController.lightTheme.value,
                    onChanged: (value) {
                      _switchButtonController.changeTheme(value);
                    },
                  )),
              Text("Dark Theme "),
            ],
          )
        ],
      ),
    );
  }
}
