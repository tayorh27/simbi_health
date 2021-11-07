import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopIconWidget extends StatelessWidget {
  const TopIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Container(
        height: 61.h,
        width: 61.h,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 70, 70, 1),
            borderRadius: BorderRadius.circular(100.r)),
        child: Stack(
          children: [
            Positioned(
                top: 8.h,
                left: 8.h,
                child: Container(
                  height: 45.h,
                  width: 45.h,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 220, 134, 1),
                      borderRadius: BorderRadius.circular(100)),
                )),
            Positioned(
                top: 18.h,
                left: 18.h,
                child: Container(
                  height: 25.h,
                  width: 25.h,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 70, 70, 1),
                      borderRadius: BorderRadius.circular(100)),
                )),
            Positioned(
                top: 26.h,
                left: 26.h,
                child: Container(
                  height: 9.h,
                  width: 9.h,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(100)),
                )),
          ],
        ),
      ),
    );
  }
}
