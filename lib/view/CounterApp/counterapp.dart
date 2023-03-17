import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/controller/CounterApp%20Controller/Counter%20App%20Controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  final CounterAppController controller = Get.put(CounterAppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Application"),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          print("rebuild");
          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 50),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
          controller.checktype();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
