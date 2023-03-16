import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../functions/GetX_Dialog_Alert_Function/GetX Dialog Alert_Func.dart';

class Dark_theme_Light_theme extends StatefulWidget {
  const Dark_theme_Light_theme({super.key});

  @override
  State<Dark_theme_Light_theme> createState() => _Dark_theme_Light_themeState();
}

class _Dark_theme_Light_themeState extends State<Dark_theme_Light_theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Dark theme, Light theme"),
        centerTitle: true,
      
      ),
      body: Container(
        // color: Colors.blue,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.chat_bubble_outline,
                    size: 40,
                  ),
                  title: Text("Muneeb Shahid"),
                  subtitle: Text("How are you?"),
                  onTap: () {
                    Get.bottomSheet(Container(
                        color: Colors.amber,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text("Light Mode"),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text("Dark Mode"),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        )));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
