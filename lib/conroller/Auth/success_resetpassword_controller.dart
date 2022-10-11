import 'package:get/get.dart';
import 'package:students/core/constant/name_routes.dart';

abstract class SuccessRestPassWordController extends GetxController {
  goToPageLogin();
}

class SuccessRestPassWordControllerImp extends SuccessRestPassWordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
