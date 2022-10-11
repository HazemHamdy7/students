import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/onBoardingController.dart';
import 'package:students/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        onPressed: () {
          controller.next();
        },
        textColor: Colors.white,
        color: AppColor.buttunColor,
        child: const Text("Continue"),
      ),
    );
  }
}
