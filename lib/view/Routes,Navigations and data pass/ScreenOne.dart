import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
   ScreenOne({super.key, });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One" ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/ScreenTwo",arguments: [
                    "Muneeb"
                  ]);
                },
                child: Text("Go to next page")),
          ],
        ),
      ),
    );
  }
}
