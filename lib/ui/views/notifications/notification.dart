import 'package:flutter/material.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: AppColors.blackColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: ListView(
          children: [
            Text(
              "Notifications",
              style: customTextStyle(AppColors.deepBlueColor, 28.sp,
                  "helveticaNeueNormal", FontWeight.w700),
            ),
            SizedBox(
              height: 32.0,
            ),
            Center(
              child: Text(
                "Read the latest story about Rose",
                style: activityTitleTextStyle,
              ),
            ),
            SizedBox(
              child: Divider(),
              height: 16.0,
            ),
            Center(
              child: Text(
                "Read the latest story about Rose",
                style: activityTitleTextStyle,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[100],
              child: Center(
                child: Text(
                  "Read the latest story about Rose",
                  style: customTextStyle(AppColors.simbiPrimaryColor, 14.sp,
                      'helveticaNeueNormal', FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[100],
              child: Center(
                child: Text(
                  "Read the latest story about Rose",
                  style: customTextStyle(AppColors.simbiPrimaryColor, 14.sp,
                      'helveticaNeueNormal', FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[100],
              child: Center(
                child: Text(
                  "Read the latest story about Rose",
                  style: customTextStyle(AppColors.simbiPrimaryColor, 14.sp,
                      'helveticaNeueNormal', FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.green[100],
              child: Center(
                child: Text(
                  "Read the latest story about Rose",
                  style: customTextStyle(AppColors.simbiPrimaryColor, 14.sp,
                      'helveticaNeueNormal', FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
