import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImageFromCamera() async {
    final ImagePicker _imagePicker = ImagePicker();
    final Camera_image =
        await _imagePicker.pickImage(source: ImageSource.camera);
    if (Camera_image != null) {
      imagePath.value = Camera_image.path.toString();
    }
  }
}
