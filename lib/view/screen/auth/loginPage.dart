import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/Auth/login_controller.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/constant/image_asset.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/view/widget/auth/customBtnLang.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';
import 'package:students/view/widget/auth/customTextForm.dart';
import 'package:students/view/widget/auth/customtextBodyAuth.dart';
import 'package:students/view/widget/auth/logoAuth.dart';
import 'package:students/view/widget/auth/text_signOut.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text(
            "Sign in",
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: AppColor.gray),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AppImageAsset.login,
              fit: BoxFit.fitHeight,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                child: ListView(
                  children: [
                    // const LogoAuth(),
                    Text(
                      "Welcom Back",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColor.black),
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
                      mycontroller: controller.email,
                    ),
                    CustomTextFormAuth(
                      hinttext: "Eenter Your Password",
                      labeltext: "Password",
                      iconData: Icons.lock_outline,
                      mycontroller: controller.password,
                    ),
                    InkWell(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      child: const Text(
                        "Forget Password",
                        textAlign: TextAlign.end,
                      ),
                    ),
                    CustomButtonAuth(
                      text: "Sign in",
                      onpressed: () {},
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextSignOutOrLogin(
                        text: "Don't have  an account ?",
                        text2: "Signup",
                        onTap: () {
                          controller.goToSignUp();
                        }),
                    const Text(
                      "OR",
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
