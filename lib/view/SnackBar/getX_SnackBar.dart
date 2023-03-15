import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../Constants/Constants_Colors.dart';

class GetX_SnackBar extends StatefulWidget {
  const GetX_SnackBar({super.key});

  @override
  State<GetX_SnackBar> createState() => _GetX_SnackBarState();
}

class _GetX_SnackBarState extends State<GetX_SnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GetX SnackBar",
          style: TextStyle(color: Constants_Colors.White_Color),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.snackbar(
              "Help!",
              'Users wants a help!',
              colorText: Colors.black,
              icon: Icon(Icons.message),
           
            );
          }),
    );
  }
}
