import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/Controller/LocaleController.dart';
import 'package:sampleproject/Controller/ThemeController.dart';
import 'package:sampleproject/Theme/ThemeApp.dart';
import 'package:sampleproject/main.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  ThemeController s1 = Get.find();
  LocaleControllar s2 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '6'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            Switch(
              value: s1.val,
              onChanged: (val) {
                setState(() {
                  s1.val = val;
                  print('${s1.val}');
                  s1.switchChange(val);
                });
              },
            ),
            Text(
              '7'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('1'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                pref.setBool('fetch', true);
                Get.offNamed('/detailsPage');
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '3'.tr,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      s2.ChangeLoclae('en');
                    });
                  },
                  child: Text(
                    '8'.tr,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    s2.ChangeLoclae('ar');
                  },
                  child: Text(
                    '9'.tr,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
