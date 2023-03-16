import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetX_Dialog_Alert_Function {
  getDialogBox() {
    Get.defaultDialog(
      title: "Delete Chat?",
      middleText: "Do you want to delete this chat permenantly?",
      titlePadding: EdgeInsets.only(top: 15),
      contentPadding: EdgeInsets.only(left: 10, right: 10, top: 20),
      confirm: TextButton(
        onPressed: () {},
        child: Text("Yes"),
      ),
      cancel: TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text("No"),
      ),
    );
  }
}
