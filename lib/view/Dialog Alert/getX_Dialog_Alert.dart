import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../functions/GetX_Dialog_Alert_Function/GetX Dialog Alert_Func.dart';

class GetX_Dialog_Alert extends StatefulWidget {
  GetX_Dialog_Alert({super.key});

  @override
  State<GetX_Dialog_Alert> createState() => _GetX_Dialog_AlertState();
}

class _GetX_Dialog_AlertState extends State<GetX_Dialog_Alert> {
  @override
  Widget build(BuildContext context) {
    var heightt = MediaQuery.of(context).size.height * 1;
    var widthh = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Dialog Alert"),
        centerTitle: true,
      ),
      body: Container(
        height: heightt * .4,
        width: widthh * .4,
        color: Colors.blue,
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
                    GetX_Dialog_Alert_Function().getDialogBox();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.chat_bubble_outline,
                    size: 40,
                  ),
                  title: Text("Muhammad Ali"),
                  subtitle: Text("Class Timing?"),
                  onTap: () {
                    GetX_Dialog_Alert_Function().getDialogBox();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
