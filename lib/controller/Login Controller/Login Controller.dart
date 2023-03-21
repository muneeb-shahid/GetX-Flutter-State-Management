import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Login_Controller extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;
  void loginAPI() async {
    try {
      loading.value = true;
      final Response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });

      var data = jsonDecode(Response.body);
      print(Response.statusCode);
      print(data);

      if (Response.statusCode == 200) {
        loading.value = false;

        Get.snackbar("Login Successful", "Your email & password is correct");
      } else {
        loading.value = false;

        Get.snackbar(
          "Login Fail",
          "Your email & password is wrong",
        );
      }
    } catch (e) {
      loading.value = false;

      Get.snackbar("Exception", e.toString());
    }
  }


}
