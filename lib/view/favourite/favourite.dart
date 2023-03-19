import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx/controller/favourite/favouriteController.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  FavouriteController _favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _favouriteController.fruits.length,
        itemBuilder: (context, index) {
          return Card(
              child: Obx(() => ListTile(
                    title: Text(_favouriteController.fruits[index].toString()),
                    trailing: Icon(Icons.favorite,
                        color: _favouriteController.Empty_Fruits.contains(
                                _favouriteController.fruits[index].toString())
                            ? Colors.red
                            : Colors.black),
                    onTap: () {
                      _favouriteController.Empty_Fruits.contains(
                          _favouriteController.fruits[index].toString())
                          ? _favouriteController.removeFromFavourite(
                              _favouriteController.fruits[index].toString())
                          : _favouriteController.addToFavourite(
                              _favouriteController.fruits[index].toString());
                    },
                  )));
        },
      ),
    );
  }
}
