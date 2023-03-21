import 'dart:html';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Login_Controller extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void loginAPI() async {
    final Response = await post(Uri.parse("https://reqres.in/api/login"),
    body:
    {
      "email": '',
     "password":'', 
    }
    );
    
  }
}
