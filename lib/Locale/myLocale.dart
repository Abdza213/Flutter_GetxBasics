import 'package:get/get.dart';

class myLocale implements Translations {
  Map<String, Map<String, String>> get keys => {
        'ar': {
          '1': 'الصفحة الرئيسية',
          '2': 'الصفحة الرئيسية',
          '3': 'تسجيل الدخول',
          '4': 'صفحة المعلومات',
          '5': 'تسجيل الخروج',
          '6': 'الوضع الليلي',
          '7': 'الوضع النهاري',
          '8': 'الانجليزيه',
          '9': 'العربية',
        },
        'en': {
          '1': 'Home Page',
          '2': 'Home Page',
          '3': 'Log In',
          '4': 'Details Screen',
          '5': 'Log Out',
          '6': 'Dark Theme',
          '7': 'Light Theme',
          '8': 'English',
          '9': 'Arabic',
        },
      };
}
