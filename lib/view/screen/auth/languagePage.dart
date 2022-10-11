import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/core/localization/changeLoclistion.dart';
import 'package:students/view/widget/auth/customBtnLang.dart';

class ScreenLanguage extends GetView<LocalController> {
  const ScreenLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("1".tr,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: AppColor.black,
                  )),
          CustomButtonLanguage(
            text: "Ar",
            onPressed: () {
              controller.changeLanguage("ar");
              //  Get.to(const OnBorading());
              Get.toNamed(AppRoutes.onBoarding);
            },
          ),
          CustomButtonLanguage(
            text: "En",
            onPressed: () {
              controller.changeLanguage("en");
              //   Get.to(const OnBorading());
              Get.toNamed(AppRoutes.onBoarding);
            },
          ),
        ],
      ),
    );
  }
}
