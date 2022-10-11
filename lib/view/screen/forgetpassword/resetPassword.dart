import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/Auth/resetpassword_Controller.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';
import 'package:students/view/widget/auth/customTextForm.dart';
import 'package:students/view/widget/auth/customtextBodyAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //   centerTitle: true,
          backgroundColor: AppColor.black,
          //   elevation: 0,
          //   title: Text(
          //     "Reset Password",
          //     style: Theme.of(context)
          //         .textTheme
          //         .headline1!
          //         .copyWith(color: AppColor.gray),
          //   ),
        ),
        body:
            // Stack(
            //   fit: StackFit.expand,
            //   children: [
            //     Image.asset(
            //       AppImageAsset.login,
            //       fit: BoxFit.fitHeight,
            //     ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: ListView(
                  children: [
                    Text(
                      "Reset Password",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColor.black),
                    ),
                    Text(
                      "New Password",
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
                        text: "Please Enter Your Password ,"),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomTextFormAuth(
                      hinttext: "Enter Your Password",
                      labeltext: "Password",
                      iconData: Icons.lock_outline,
                      mycontroller: controller.repassword,
                    ),
                    CustomTextFormAuth(
                      hinttext: "Re Enter Your Password",
                      labeltext: "Password",
                      iconData: Icons.lock_outline,
                      mycontroller: controller.password,
                    ),
                    // CustomTextFormAuth(
                    //     hinttext: "Enter Your Email",
                    //     labeltext: "Email",
                    //     iconData: Icons.email_outlined,
                    //     mycontroller: controller.email),
                    CustomButtonAuth(
                      text: " Save ",
                      onpressed: () {
                        controller.goToVSuccessResetpasswoed();
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                )),
      ),
    );
  }
}
