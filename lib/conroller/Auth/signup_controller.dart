import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/view/screen/auth/signup_Page.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController UserName;
  late TextEditingController email;
  late TextEditingController Phone;
  late TextEditingController password;
  @override
  SignUp() {
    Get.offNamed(AppRoutes.checkEmail);
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    UserName = TextEditingController();
    Phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    UserName.dispose();
    Phone.dispose();
    password.dispose();
    super.dispose();
  }
}
