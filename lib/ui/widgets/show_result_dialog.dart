import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/certificate/certificate.dart';

import 'package:simbi_health/data/models/featured_projects.dart';

class ShowResultDialogDialog extends StatefulWidget {

  final Session? projectSession;
  const ShowResultDialogDialog({Key? key, this.projectSession}) : super(key: key);

  @override
  _ShowResultDialogDialogState createState() => _ShowResultDialogDialogState();
}

class _ShowResultDialogDialogState extends State<ShowResultDialogDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 39.h,),
            Text("Nice Work!", style: customTextStyle(AppColors.blackColor, 20.sp, 'helveticaNeueNormal', FontWeight.w700),),

            SizedBox(height: 8.h,),

            Text("You got 80%",  style: customTextStyle(AppColors.simbiPrimaryColor, 18.sp, 'helveticaNeueNormal', FontWeight.w700)),

            SizedBox(height: 14.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("You’ve earned a \n Simbi badge"),
                SizedBox(width: 8.w,),
                
                Icon(Icons.cut_sharp, color: AppColors.yellowColor,)
            ],),

            SizedBox(height: 16.h,),

            Container(height: 145.h,
            padding: EdgeInsets.symmetric(horizontal: 10),
            // decoration: BoxDecoration(
            //   color: Color.fromRGBO(236, 244, 255, 1)
            // ),
              child: Column(
                children: [
                  SizedBox(height: 13.h,),
                  Text('You have also earned a certificate', style: customTextStyle(AppColors.blackColor, 12.sp, 'helveticaNeueNormal', FontWeight.w700)),

                  SizedBox(height: 25.h,),

                  InkWell(
                    onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => ViewCertificate(
      projectSession: widget.projectSession,
    )));
                    },
                    child: Text("View your certificate", style: customTextStyle(AppColors.yellowColor, 14.sp, 'helveticaNeueNormal', FontWeight.w700)),

                  ),

                  // SizedBox(height: 33.h,),
                  //
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text("Download certificate", style: customTextStyle(AppColors.yellowColor, 14.sp, 'helveticaNeueNormal', FontWeight.w700)),
                  //     SizedBox(width: 5.w,),
                  //
                  //     Icon(Icons.keyboard_arrow_down, color: AppColors.yellowColor,)
                  //   ],
                  // ),
                ],
              ),
            ),

            SizedBox(height: 9.h,),

            // Text('Share your certificate on', style: customTextStyle(AppColors.blackColor, 12.sp, 'helveticaNeueNormal', FontWeight.w700)),
            //
            // SizedBox(height: 37.h,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 28.h,
            //       width: 28.w,
            //       decoration: BoxDecoration(
            //         color: Colors.blue,
            //         borderRadius: BorderRadius.circular(100),
            //       ),
            //       child: Image.asset("assets/images/twitter.png"),
            //     ),
            //
            //     SizedBox(width: 34.w,),
            //
            //     Container(
            //       height: 28.h,
            //       width: 28.w,
            //       decoration: BoxDecoration(
            //         color: Colors.blue,
            //         borderRadius: BorderRadius.circular(100),
            //       ),
            //       child: Image.asset("assets/images/instagram.png"),
            //     ),
            //
            //     SizedBox(width: 34.w,),
            //
            //     Container(
            //       height: 28.h,
            //       width: 28.w,
            //       decoration: BoxDecoration(
            //         color: Colors.blue,
            //         borderRadius: BorderRadius.circular(100),
            //       ),
            //       child: Image.asset("assets/images/fb.png"),
            //     )
            // ],),

            // SizedBox(height: 53.h,)
          ],
        ),
      ),
    );
  }

}
