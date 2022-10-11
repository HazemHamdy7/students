import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:students/conroller/Auth/forgetPasswordController.dart';
import 'package:students/conroller/Auth/verfiycode_Controller.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';
import 'package:students/view/widget/auth/customTextForm.dart';
import 'package:students/view/widget/auth/customtextBodyAuth.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerfiyCodeControllerImp controller = Get.put(VerfiyCodeControllerImp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 142, 212, 221),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text(
            "Verifcation Code",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.black),
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
                    const EdgeInsets.symmetric(vertical: 80, horizontal: 50),
                child: ListView(
                  children: [
                    Text(
                      "Check Code",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColor.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        " Please Enter The Digit code sent To \n Hazem@gamil.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    OtpTextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      fieldWidth: 50.0,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: const Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goToResetPassword();
                      },
                    ),

                    // CustomButtonAuth(
                    //   text: " Check ",
                    //   onpressed: () {},
                    // ),
                  ],
                )),
      ),
    );
  }
}
