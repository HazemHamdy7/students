import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/localization/changeLoclistion.dart';
import 'package:students/core/localization/translation.dart';
import 'package:students/core/services/services.dart';
import 'package:students/routes.dart';
import 'package:students/test_package.dart';
import 'package:students/view/screen/auth/languagePage.dart';
import 'package:students/view/screen/auth/signup_Page.dart';
import 'view/onBorarding.dart';
import 'view/screen/auth/loginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inilialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: controller.appTheme,
      home: const OnBorading(),
      //  Test(),
      routes: routes,
    );
  }
}
 //====================================================

 