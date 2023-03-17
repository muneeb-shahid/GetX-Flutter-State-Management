import 'package:get/get.dart';

class Slider_App_Controller extends GetxController {
  RxDouble opacity = 0.4.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}
