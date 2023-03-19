import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../controller/ImagePickerController/ImagePickerController.dart';

class ImagePicker extends StatelessWidget {
  const ImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController _Image_Picker_Controller =
        Get.put(ImagePickerController());
    return Scaffold(
        appBar: AppBar(
          title: Text("ImagePicker"),
          centerTitle: true,
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _Image_Picker_Controller
                            .imagePath.isNotEmpty
                        ? FileImage(
                            File(_Image_Picker_Controller.imagePath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    _Image_Picker_Controller.getImageFromCamera();
                  },
                  child: Text("Pick Image"))
            ],
          );
        }));
  }
}
