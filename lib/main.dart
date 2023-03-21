import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/CounterApp/counterapp.dart';
import 'package:getx/view/Dark%20theme%20Light%20theme/GetX%20Dark%20theme%20Light%20theme.dart';
import 'package:getx/view/Dialog%20Alert/getX_Dialog_Alert.dart';
import 'package:getx/view/ImagePicker/ImagePicker.dart';
import 'package:getx/view/Login/Login%20.dart';
import 'package:getx/view/Routes,Navigations%20and%20data%20pass/ScreenOne.dart';
import 'package:getx/view/Routes,Navigations%20and%20data%20pass/ScreenTwo.dart';
import 'package:getx/view/SnackBar/getX_SnackBar.dart';
import 'package:getx/view/Switch%20Button/switchbutton.dart';

import 'controller/Switch Button/SwitchButtonController.dart';
import 'view/Slider/slider.dart';
import 'view/favourite/favourite.dart';

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
      home: LoginView(),
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
        GetPage(name: "/CounterApp", page: () => CounterApp(),),
        GetPage(name: "/Slider_App", page: () => Slider_App(),),
        GetPage(name: "/SwitchButton", page: () => SwitchButton()),
        GetPage(name: "/Favourite", page: () =>Favourite())
      ],
    );
  }
}
