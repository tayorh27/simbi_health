import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/project_info/project_session_intro.dart';

class SessionCard extends StatelessWidget {
  final FeaturedProjects? featuredProject;
  const SessionCard({Key? key, this.featuredProject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: featuredProject!.sessions!.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final session = featuredProject!.sessions![index];
          return Padding(
            padding: EdgeInsets.only(bottom: 9),
            child: InkWell(
              onTap: () {},
              child: Container(
                // padding: EdgeInsets.only(left: 23.h, top: 11.h, right: 8.h),
                height: 138.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: session.containerColor,
                ),
                child: InkWell(
                  onTap: () {
                    if (session.isLocked!) {
                      Fluttertoast.showToast(
                          msg: "Session locked",
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColors.yellowColor,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectSessionIntro(
                                    featuredProject: featuredProject,
                                    session: session,
                                  )));
                    }
                  },
                  child: Container(
                    height: 138.h,
                    color: Colors.black26,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 23.h, top: 11.h, right: 8.h),
                      child: Stack(
                        children: [
                          if (index > 0 && session.isLocked!)
                            Positioned(
                                top: 40.h,
                                left: 55.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.lock_outline),
                                      color: AppColors.whiteColor,
                                      iconSize: 35,
                                    ),
                                    Text(
                                      "Complete session ${featuredProject!.sessions![index - 1].number} to unlock",
                                      style: customTextStyle(
                                          AppColors.whiteColor,
                                          10,
                                          'helveticaNeueNormal',
                                          FontWeight.w400),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "unlock ${session.number}",
                                      style: customTextStyle(
                                          AppColors.whiteColor,
                                          10,
                                          'helveticaNeueNormal',
                                          FontWeight.w400),
                                    ),
                                  ],
                                )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${session.number}',
                                    style: customTextStyle(
                                        session.isLocked!
                                            ? Colors.white12
                                            : AppColors.whiteColor,
                                        10,
                                        'helveticaNeueNormal',
                                        FontWeight.w400),
                                  ),
                                  if (!session.isLocked!)
                                    Icon(
                                      Icons.bookmark_add,
                                      size: 20,
                                      color: AppColors.whiteColor,
                                    )
                                ],
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    '${session.title}',
                                    style: customTextStyle(
                                        session.isLocked!
                                            ? Colors.white12
                                            : AppColors.whiteColor,
                                        14,
                                        'helveticaNeueNormal',
                                        FontWeight.w700),
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                height: 18.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: Colors.black26),
                                child: Text("${session.duration} mins",
                                    style: customTextStyle(
                                        session.isLocked!
                                            ? Colors.white12
                                            : AppColors.whiteColor,
                                        9,
                                        'helveticaNeueNormal',
                                        FontWeight.w400)),
                                alignment: Alignment.center,
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              if (!session.isLocked!)
                                LinearProgressIndicator(
                                  backgroundColor: session.isLocked!
                                      ? Colors.white12
                                      : AppColors.whiteColor,
                                  value: 1,
                                  color: session.isLocked!
                                      ? Colors.white12
                                      : AppColors.whiteColor,
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
