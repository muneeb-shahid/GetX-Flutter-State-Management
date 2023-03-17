import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/Dark%20theme%20Light%20theme/GetX%20Dark%20theme%20Light%20theme.dart';
import 'package:getx/view/Dialog%20Alert/getX_Dialog_Alert.dart';
import 'package:getx/view/Routes,Navigations%20and%20data%20pass/ScreenOne.dart';
import 'package:getx/view/Routes,Navigations%20and%20data%20pass/ScreenTwo.dart';
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
      home: ScreenOne(),
      getPages: [
        GetPage(name: '/', page: () => GetX_SnackBar()),
        GetPage(name: '/GetX_Dialog_Alert', page: () => GetX_Dialog_Alert()),
        GetPage(
          name: "/Dark_theme_Light_theme",
          page: () => Dark_theme_Light_theme(),

        ),
        GetPage(name: "/ScreenOne", page: () => ScreenOne(),
        
        ),
        GetPage(name: "/ScreenTwo", page: () => ScreenTwo(),),
      ],
    );
  }
}
