import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/apptheme.dart';
import 'package:students/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  changeLanguage(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);

    Get.updateLocale(locale);
  }

// هذه المعدله للاختيار لغخ الجهاز
  @override
  void onInit() {
    String? sharedPreLang = myServices.sharedPreferences.getString("lang");

    if (sharedPreLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPreLang == "en") {
      language = const Locale("en");
      appTheme == themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }

    super.onInit();
  }
}
