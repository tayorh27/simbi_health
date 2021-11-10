import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProjectCard extends StatelessWidget {
  final String? progress, percent, duration, number, title;
  const ProjectCard({Key? key, this.progress, this.percent, this.duration, this.number, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 7),
      height: 150.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.lightBlueColor,
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Session Number: $number",
                style: customTextStyle(AppColors.whiteColor, 10.sp,
                    'helveticaNeueNormal', FontWeight.w400),
              )
            ],
          ),

          SizedBox(
            height: 13,
          ),

          Row(
            children: [
              Expanded(
                  child: Text(
                    (title == null) ? "Common misconceptions and myths about mental health" : title!,
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.whiteColor,
                    fontFamily: 'helveticaNeueNormal',
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ))
            ],
          ),

          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Container(
                height: 18.h,
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(14, 77, 164, 0.57),
                ),
                child: Text(
                  (duration == null) ? "40 mins" : duration!,
                  style: customTextStyle(
                      Colors.white, 9, 'helveticaNeueNormal', FontWeight.w400),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          StepProgressIndicator(
            totalSteps: 100,
            currentStep: (percent == null) ? 4 : int.parse(percent!),
            size: 1,
            padding: 0,
            selectedColor: AppColors.whiteColor,
            unselectedColor: Color.fromRGBO(255, 255, 255, 0.3),
            roundedEdges: Radius.circular(10),
          ),

          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                (progress == null) ? "4/10" : progress!,
                style: customTextStyle(AppColors.whiteColor, 9.sp,
                    'helveticaNeueNormal', FontWeight.w400),
              ),
            ],
          )

          // SizedBox(height: 20,)
        ],
      ),
    );
  }
}
