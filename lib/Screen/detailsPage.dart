import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproject/Screen/homePage.dart';
import 'package:sampleproject/main.dart';

class detailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '4'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                pref.clear();
                Get.off(homePage());
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '5'.tr,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
