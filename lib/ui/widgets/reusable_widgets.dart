import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';

Widget customElevatedButton({Function? onPress, String? text, Color? textColor}){
 return Container(
   width: double.infinity,
   child: ElevatedButton(
     child: Text(
       text!,
       style: customTextStyle(textColor!, 13.h, 'helveticaNeueNormal', FontWeight.w400),
     ),
     onPressed: onPress as void Function(),
     style: ElevatedButton.styleFrom(
       primary: AppColors.simbiPrimaryColor,
       padding: EdgeInsets.only(top: 16, bottom: 16),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8.0),
       ),
     ),
   ),
 );
}

Widget customTextField({String? label, String? hint, bool prefixIcon = false, IconData? prefixIconData, bool numberOfLines = false, int? noOfLines }){
  return  TextFormField(
    obscureText: false,
    maxLines: numberOfLines ? noOfLines : 1,
    decoration: InputDecoration(
        prefixIcon: prefixIcon? Icon(prefixIconData) : Container(),
        contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 2.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide:
          BorderSide(color: AppColors.borderColor, width: 2),
        ),
        hintText: hint,
        labelText: label,
        hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
        labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
    ),
  );
}
