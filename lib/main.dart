import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/Dark%20theme%20Light%20theme/GetX%20Dark%20theme%20Light%20theme.dart';
import 'package:getx/view/Dialog%20Alert/getX_Dialog_Alert.dart';
import 'package:getx/view/SnackBar/getX_SnackBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Dark_theme_Light_theme(),
    );
  }
}
