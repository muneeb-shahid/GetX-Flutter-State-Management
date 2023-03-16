import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
             ElevatedButton(
                onPressed: () {
                  // Get.toNamed("/GetX_SnackBar");
                },
                child: Text("Go to next page")),
          ],
        ),
      ),
    );
  }
}
