import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ImagePicker extends StatelessWidget {
  const ImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ImagePicker"),
          centerTitle: true,
        ),
        body: Obx(() {
          return Column(
            children: [
              Center(
                child: CircleAvatar(
                  
                ),
              )
            ],
          );
        }));
  }
}
