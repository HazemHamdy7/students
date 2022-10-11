import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/constant/image_asset.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/view/screen/forgetpassword/success_signup.dart';
import 'package:students/view/widget/auth/customBtnLang.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';
import 'package:students/view/widget/auth/customTextForm.dart';
import 'package:students/view/widget/auth/customtextBodyAuth.dart';
import 'package:students/view/widget/auth/logoAuth.dart';
import 'package:students/view/widget/auth/text_signOut.dart';

import '../../../conroller/Auth/signup_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "Sign up",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.gray),
        ),
      ),
      body:
          // Container(
          //   padding: EdgeInsets.only(top: 50),
          //   child: Stack(
          //     fit: StackFit.expand,
          //     children: [
          //       Container(
          //         color: Colors.black.withOpacity(0.2),
          //         child: Image.asset(
          //           AppImageAsset.login,
          //           fit: BoxFit.fitHeight,
          //         ),
          //       ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              child: ListView(
                children: [
//const LogoAuth(),
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    // width: double.infinity,
                    // height: double.infinity,
                    child: Text(
                      "Welcom Back",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColor.black),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuhth(
                      text:
                          "We Have  a 100k products Choose Your product from our ,"),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextFormAuth(
                      hinttext: "Enter Your Email",
                      labeltext: "Email",
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email),
                  CustomTextFormAuth(
                    hinttext: "phone Number",
                    labeltext: "phone",
                    iconData: Icons.lock_outline,
                    mycontroller: controller.Phone,
                  ),
                  CustomTextFormAuth(
                    hinttext: "Enter Your Password",
                    labeltext: "Password",
                    iconData: Icons.lock_outline,
                    mycontroller: controller.password,
                  ),
                  CustomTextFormAuth(
                    hinttext: "",
                    labeltext: "Password",
                    iconData: Icons.lock_outline,
                    mycontroller: controller.password,
                  ),

                  CustomButtonAuth(
                    text: "Sign up",
                    onpressed: () {
                      Get.toNamed(AppRoutes.successSignUp);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextSignOutOrLogin(
                    text: "arady have account ",
                    text2: " login ",
                    onTap: () {
                      controller.goToSignIn();
                    },
                  ),
                ],
              )),
    );
  }
}
