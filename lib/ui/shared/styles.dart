import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';

final headingTextStyle = TextStyle(
    color: AppColors.deepBlueColor,
    fontSize: 24.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w700);

final splashHeadingTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 24.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w700);

final buttonTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 13.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final onBoardingBoldText = TextStyle(
    color: AppColors.blackColor,
    fontSize: 20.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final onBoardingFaintText = TextStyle(
    color: Color.fromRGBO(188, 188, 188, 1),
    fontSize: 15.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final labelTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 9.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final hintTextStyle = TextStyle(
    color: Color.fromRGBO(204, 211, 221, 1),
    fontSize: 13.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final inputTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 13.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final createAccountTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 13.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w700);

final loginTextStyle = TextStyle(
    color: AppColors.simbiPrimaryColor,
    fontSize: 13.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w700);

final activityTitleTextStyle = TextStyle(
    color: AppColors.textTitleColor,
    fontSize: 14.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w400);

final text1TextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w900);

final text2TextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 12.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w900);

final text3TextStyle = TextStyle(
    color: AppColors.deepBlueColor,
    fontSize: 12.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w900);

final text4TextStyle = TextStyle(
    color: AppColors.simbiPrimaryColor,
    fontSize: 13.sp,
    fontFamily: 'helveticaNeueNormal',
    fontWeight: FontWeight.w900);

TextStyle customTextStyle(
    Color textColor, double fontSize, String fontFamily, FontWeight weight) {
  return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: weight);
}
