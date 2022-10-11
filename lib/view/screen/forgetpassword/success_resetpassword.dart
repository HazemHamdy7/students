import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/Auth/success_resetpassword_controller.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/view/widget/auth/customButtonAuth.dart';

import '../../../conroller/Auth/success_signup_controller.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessRestPassWordControllerImp controller =
        Get.put(SuccessRestPassWordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        elevation: 0,
        title: Text(
          " Success ",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: AppColor.gray),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.buttunColor,
              ),
              Text(
                "37".tr,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30),
              ),
              Text("36".tr),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: CustomButtonAuth(
                  text: "31".tr,
                  onpressed: () {
                    controller.goToPageLogin();
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
