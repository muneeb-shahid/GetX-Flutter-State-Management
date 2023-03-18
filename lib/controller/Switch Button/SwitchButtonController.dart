import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchButtonController extends GetxController {
  RxBool lightTheme = false.obs;

  changeTheme(bool value) {
    lightTheme.value = value;

    lightTheme == false
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
  }
}
