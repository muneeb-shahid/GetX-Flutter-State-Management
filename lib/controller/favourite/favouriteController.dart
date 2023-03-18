import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList fruits = ['Mango', 'Apple', 'Banana', 'Orange', 'Graph'].obs;
  RxList Empty_Fruits = [].obs;

  addToFavourite(String value) {
    Empty_Fruits.add(value);
  }

   removeFromFavourite(String value) {
    Empty_Fruits.remove(value);
  }
}
