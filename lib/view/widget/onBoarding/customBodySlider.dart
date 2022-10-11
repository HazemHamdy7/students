import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/conroller/onBoardingController.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/data/dataScours/static/static_OnBoarding_Screen.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      // مهم جدا لتشغيل عمليه التنقل بين الصفحات slider OnBoarding Screen
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(onBoardingList[i].title!,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          const SizedBox(
            height: 30,
          ),
          // images........//
          Image.asset(
            onBoardingList[i].image!,
            height: Get.width / 1.3,
            // width: 300,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 60,
          ),
          // Text editing in future ........//
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),

          // body........//

          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
        ],
      ),
    );
  }
}
