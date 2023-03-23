import 'package:get/get.dart';
import 'package:getx/resources/routes/routes_name.dart';

import '../../view/Dialog Alert/getX_Dialog_Alert.dart';
import '../../view/SnackBar/getX_SnackBar.dart';

class AppRoutes {
static  appRoutes() =>
    [
      GetPage(
        name: RoutesName.GetX_SnackBar,
        page: () => GetX_SnackBar(),
      ),
      GetPage(
        name: RoutesName.GetX_Dialog_Alert,
        page: () => GetX_Dialog_Alert(),
      ),
    ];
 
}
