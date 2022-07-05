import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/Auth/AuthMiddleware.dart';
import 'package:sampleproject/Controller/LocaleController.dart';
import 'package:sampleproject/Controller/ThemeController.dart';
import 'package:sampleproject/Locale/myLocale.dart';
import 'package:sampleproject/Screen/detailsPage.dart';
import 'package:sampleproject/Screen/homePage.dart';
import 'package:sampleproject/Theme/ThemeApp.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences pref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  pref = await SharedPreferences.getInstance();
  runApp(newApp());
}

class newApp extends StatelessWidget {
  ThemeController s1 = Get.put(ThemeController());
  LocaleControllar s2 = Get.put(LocaleControllar());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: s1.getTheme,
      debugShowCheckedModeBanner: false,
      locale: s2.getLoclae,
      translations: myLocale(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => homePage(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(name: '/detailsPage', page: () => detailsPage()),
      ],
    );
  }
}
