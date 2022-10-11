import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// هذا ملف  ال خدمات الخاص بتغير اللغات

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

inilialServices() async {
  await Get.putAsync(() => MyServices().init());
}
