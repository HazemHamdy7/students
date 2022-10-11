import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/onBoardingController.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/view/widget/onBoarding/customButton.dart';
import 'package:students/view/widget/onBoarding/customDotController.dart';
import 'package:students/view/widget/onBoarding/customBodySlider.dart';

class OnBorading extends StatelessWidget {
  const OnBorading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          const Expanded(flex: 3, child: CustomSliderOnBoarding()),
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                CustomDotControllerOnBoarding(),
                Spacer(
                  flex: 2,
                ),
                CustomButtonOnBoarding(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
