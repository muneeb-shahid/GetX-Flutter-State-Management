import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../Constants/Constants_Colors.dart';
import '../../controller/Login Controller/Login Controller.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Login_Controller _login_Controller = Get.put(Login_Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                controller: _login_Controller.emailController.value,
                decoration: InputDecoration(hintText: 'Email'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                controller: _login_Controller.passwordController.value,
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                _login_Controller.loginAPI();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constants_Colors.green_color,
                  ),
                  child: Center(
                      child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Constants_Colors.White_Color),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
