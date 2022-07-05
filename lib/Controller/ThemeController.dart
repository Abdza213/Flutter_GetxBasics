import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/Theme/ThemeApp.dart';
import 'package:sampleproject/main.dart';

class ThemeController extends GetxController {
  bool val = pref.getBool('darkTheme') == true ? false : true;
  void switchChange(bool val) {
    val = val;
    if (val == true) {
      pref.setBool('darkTheme', false);
      Get.changeTheme(ThemeApp.darkTheme);
    } else {
      pref.setBool('darkTheme', true);
      Get.changeTheme(ThemeApp.lightTheme);
    }
  }

  ThemeData get getTheme {
    return val == true ? ThemeApp.darkTheme : ThemeApp.lightTheme;
  }
}
