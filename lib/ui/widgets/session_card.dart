import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/project_info/project_session_intro.dart';
import 'package:simbi_health/utils/storage.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SessionCard extends StatefulWidget {
  final FeaturedProjects? featuredProject;
  const SessionCard({Key? key, this.featuredProject}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SessionCard();
}

class _SessionCard extends State<SessionCard> {

  StorageSystem ss = new StorageSystem();
  String continuedProjectId = "";
  List<String> sessionsDone = [];
  List<double> percentDone = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContinuedProjectData();
  }

  getContinuedProjectData() async {
    String a = await ss.getItem("${widget.featuredProject!.id}") ?? "";
    setState(() {
      continuedProjectId = a;
    });
    // await ss.setPrefItem("${currentFPId}_session_${widget.sessionIndex}", "done", isStoreOnline: false);

    if(a == "init") {
      for(int i = 0; i < widget.featuredProject!.sessions!.length; i++) {
        String value = await ss.getItem("${widget.featuredProject!.id}_session_$i") ?? "locked";
        String percent = await ss.getItem("${widget.featuredProject!.id}_percent_$i") ?? "0";
        setState(() {
          sessionsDone.add(value);
          percentDone.add(double.parse(percent));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.featuredProject!.sessions!.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final session = widget.featuredProject!.sessions![index];
          bool isLocked = true;
          double completePercent = 0;

          if(index == 0) {
            isLocked = false;
          }

          if(index > 0) {
            if(sessionsDone.isNotEmpty && sessionsDone.length == widget.featuredProject!.sessions!.length) {
              if(sessionsDone[index] == "done" || sessionsDone[index] == "next") {
                isLocked = false;
                completePercent = percentDone[index];
              }
            }
          }

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
                    if (isLocked) {
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
                                    featuredProject: widget.featuredProject,
                                    session: session, sessionIndex: index
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
                          if (index > 0 && isLocked)
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
                                      "Complete session ${widget.featuredProject!.sessions![index - 1].number} to unlock",
                                      style: customTextStyle(
                                          AppColors.whiteColor,
                                          10,
                                          'helveticaNeueNormal',
                                          FontWeight.w400),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "session ${session.number}",
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
                                        isLocked
                                            ? Colors.white12
                                            : AppColors.whiteColor,
                                        10,
                                        'helveticaNeueNormal',
                                        FontWeight.w400),
                                  ),
                                  // if (!session.isLocked!)
                                  //   Icon(
                                  //     Icons.bookmark_add,
                                  //     size: 20,
                                  //     color: AppColors.whiteColor,
                                  //   )
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
                                        isLocked
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
                                        isLocked
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
                              if (!isLocked)
                                StepProgressIndicator(
                                  totalSteps: 100,
                                  currentStep: completePercent.toInt(),
                                  size: 1,
                                  padding: 0,
                                  selectedColor: Colors.black,
                                  unselectedColor: AppColors.whiteColor,
                                  roundedEdges: Radius.circular(10),
                                )
                                // LinearProgressIndicator(
                                //   backgroundColor: AppColors.whiteColor,
                                //   value: completePercent,
                                //   color: Colors.lightGreenAccent,
                                // )
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
