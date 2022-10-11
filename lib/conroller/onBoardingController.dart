import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/name_routes.dart';
import 'package:students/data/dataScours/static/static_OnBoarding_Screen.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currenPage = 0;
  @override
  next() {
    currenPage++;
    if (currenPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currenPage,
          duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currenPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
