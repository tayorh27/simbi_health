import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/s_alert/s_alert_report.dart';

class SAlert extends StatelessWidget {
  const SAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios), color: AppColors.blackColor,),
      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text("sAlert", style: headingTextStyle,)),
              ],
            ),

            SizedBox(height: 18.h,),

            Row(
              children: [
                Expanded(child: Text("With the sAlert feature you can make emergency complaint and get necessary help in case of any form of abuse.",
                  style: customTextStyle(Color.fromRGBO(188, 188, 188, 1), 14.sp, 'helveticaNeueNormal', FontWeight.w400),)),
              ],
            ),

            SizedBox(height: 64.h,),

            // sAlert first container
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SAlertReport()));
              },
              child: Container(
                height: 127.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(131, 33, 255, 1),
                  borderRadius: BorderRadius.circular(5.r)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                        child: Image.asset("assets/images/container_one_bottom.png")),
                    Positioned(
                        top: 0,
                        child: Image.asset("assets/images/container_one_top.png")),

                    Positioned(
                        bottom: 40.h,
                        left: 30.h,
                        child: Image.asset("assets/images/s_alert_icon.png")),

                    Positioned(
                        bottom: 54.h,
                        left: 100.h,
                        child: Text("Report sexual abuse", style: customTextStyle(AppColors.whiteColor, 14.sp, 'helveticaNeueNormal', FontWeight.w400),)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16.h,),
            // sAlert second container
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SAlertReport()));
              },
              child: Container(
                height: 127.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 102, 0, 1),
                    borderRadius: BorderRadius.circular(5.r)
                ),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: Image.asset("assets/images/s_alert_container_two_bottom.png")),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset("assets/images/s_alert_container_two_top.png")),

                    Positioned(
                        bottom: 40.h,
                        left: 30.h,
                        child: Image.asset("assets/images/s_alert_icon.png")),

                    Positioned(
                        bottom: 54.h,
                        right: 21.h,
                        child: Text("Report domestic abuse", style: customTextStyle(AppColors.whiteColor, 14.sp, 'helveticaNeueNormal', FontWeight.w400),)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 39.h,),

            Container(
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(
                color: AppColors.simbiPrimaryColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(51, 204, 51, 0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset('assets/images/headset.png'),
            ),
            
            SizedBox(height: 7.h,),
            
            Text("Call help line", style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 12.sp, 'helveticaNeueNormal', FontWeight.w400),),

            SizedBox(height: 79.h,),
            
            Center(
              child: Text('By calling SIMBIHealth Help line, you take full custodian', style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 9.sp, 'helveticaNeueNormal', FontWeight.w400) ),
            ),
            SizedBox(height: 2.h,),
            Center(
              child: Text('of the victim', style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 9.sp, 'helveticaNeueNormal', FontWeight.w400) ),
            ),

            SizedBox(height: 11.h,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms and Conditions", style: customTextStyle(AppColors.yellowColor, 9.sp, 'helveticaNeueNormal', FontWeight.w400) ),
                SizedBox(width: 3.h,),
                Text("apply.", style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 9.sp, 'helveticaNeueNormal', FontWeight.w400) ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
