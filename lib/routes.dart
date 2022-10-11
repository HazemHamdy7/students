import 'package:flutter/material.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/test_package.dart';
import 'package:students/view/onBorarding.dart';
import 'package:students/view/screen/forgetpassword/check_email.dart';
import 'package:students/view/screen/forgetpassword/forgetPassword.dart';
import 'package:students/view/screen/forgetpassword/resetPassword.dart';
import 'package:students/view/screen/auth/signup_Page.dart';
import 'package:students/view/screen/forgetpassword/success_signup.dart';
import 'package:students/view/screen/forgetpassword/verfiyPage.dart';
import 'package:students/view/screen/forgetpassword/verfiycode_signup.dart';
import 'view/screen/auth/loginPage.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth

  AppRoutes.login: (context) => const Login(),
  AppRoutes.signup: (context) => const SignUp(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verfiyCode: (context) => const VerfiyCode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successResetPassword: (context) => const ResetPassword(),
  AppRoutes.successSignUp: (context) => const SuccessSignUp(),
  AppRoutes.checkEmail: (context) => const CheckEmail(),

  //OnBoarding
  AppRoutes.onBoarding: (context) => const OnBorading(),
  AppRoutes.verfiyCodesignup: (context) => VerfiyCodeSignUp(),

  AppRoutes.test: (context) => Test(),
};
