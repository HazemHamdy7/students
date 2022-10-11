import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/Auth/forgetPasswordController.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/constant/image_asset.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';
import 'package:students/view/widget/auth/customTextForm.dart';
import 'package:students/view/widget/auth/customtextBodyAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgerPasswordControllerImp controller =
        Get.put(ForgerPasswordControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text(
            "Forget Password",
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: AppColor.gray),
          ),
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
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                child: ListView(
                  children: [
                    Text(
                      "Check Email",
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
                            "please Enter Your Email Address To Re Action A Verifcation Code"),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextFormAuth(
                        hinttext: "Enter Your Email",
                        labeltext: "Email",
                        iconData: Icons.email_outlined,
                        mycontroller: controller.email),
                    CustomButtonAuth(
                      text: " Check ",
                      onpressed: () {
                        controller.goToVerfiyCode();
                      },
                    ),
                  ],
                )),
      ),
    );
  }
}
