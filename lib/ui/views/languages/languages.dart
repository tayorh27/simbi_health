import 'package:flutter/material.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
        child: ListView(
          children: [
            Text(
              "Choose preferred Language",
              style: customTextStyle(AppColors.deepBlueColor, 28.sp,
                  "helveticaNeueNormal", FontWeight.w700),
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.simbiPrimaryColor),
              ),
              child: Text("English"),
            ),
            SizedBox(
              height: 64.0,
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.simbiPrimaryColor),
              ),
              child: Text("Hausa"),
            ),
            SizedBox(
              height: 64.0,
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.simbiPrimaryColor),
              ),
              child: Text("Pidgin English"),
            ),
          ],
        ),
      ),
    );
  }
}
