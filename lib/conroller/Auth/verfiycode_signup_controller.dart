// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/name_routes.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  CheckCode();
  goToSuccessSignUp();
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  late String verfiycode;

  @override
  CheckCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
