// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/name_routes.dart';

abstract class ForgerPasswordController extends GetxController {
  CheckEmail();
  goToVerfiyCode();
}

class ForgerPasswordControllerImp extends ForgerPasswordController {
  late TextEditingController email;

  @override
  CheckEmail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoutes.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
