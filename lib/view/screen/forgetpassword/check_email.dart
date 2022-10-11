import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/Auth/CheckEmailController.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';
import 'package:students/view/widget/auth/customTextForm.dart';
import 'package:students/view/widget/auth/customtextBodyAuth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text(
            "Check Email",
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
                      "Success Sign up",
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
                         Get.offNamed(AppRoutes.verfiyCodesignup);
                       // controller.goToSuccessSignUP();
                        //  controller.goToVerfiyCode();
                      },
                    ),
                  ],
                )),
      ),
    );
  }
}
