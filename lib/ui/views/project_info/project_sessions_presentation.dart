import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/ui/widgets/final_question_dialog.dart';
import 'package:simbi_health/ui/widgets/question_dialog.dart';
import 'package:simbi_health/ui/widgets/show_result_dialog.dart';
import 'package:simbi_health/ui/widgets/top_icon_widget.dart';
import 'package:simbi_health/utils/storage.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProjectSessionsPresentation extends StatefulWidget {
  final Session? session;
  final int? sessionIndex;
  final FeaturedProjects? featuredProjects;
  const ProjectSessionsPresentation({Key? key, this.session, this.sessionIndex, this.featuredProjects}) : super(key: key);

  @override
  State<ProjectSessionsPresentation> createState() =>
      _ProjectSessionsPresentationState();
}

class _ProjectSessionsPresentationState
    extends State<ProjectSessionsPresentation> {
  int _currentIndex = 0;
  int _currentActivityIndexIndex = 0;
  int totalSteps = 0;

  bool complete = false;

  StorageSystem ss = new StorageSystem();


  List<Presentation>? presentations;
  List<Activity>? activities;
  List<Question>? questions;

  @override
  Widget build(BuildContext context) {
    presentations = widget.session!.presentation;
    activities = widget.session!.activity;
    questions = widget.session!.question;
    totalSteps = presentations!.length + activities!.length;

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
        // actions: [
        //   Icon(Icons.bookmark_sharp, color: AppColors.blackColor),
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.volume_off),
        //     color: AppColors.blackColor,
        //   )
        // ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              // height: 480.h,
              constraints: BoxConstraints.expand(height: 480.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 20,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 410.h,
                        width: 282.h,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 29,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 436.h,
                        width: 300.h,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 39,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 436.h,
                        width: 330.h,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: _currentIndex < presentations!.length ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _currentIndex == 0
                                  ? TopIconWidget()
                                  : _currentIndex == 1
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 8.h),
                                          child: Image.asset(
                                              'assets/images/brain.png'),
                                        )
                                      : Container(),
                              SizedBox(
                                height: 29,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.h),
                                child: Text(
                                  "${presentations![_currentIndex].title}",
                                  style: customTextStyle(
                                      AppColors.blackColor,
                                      18.sp,
                                      'helveticaNeueNormal',
                                      FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.h),
                                child: Divider(
                                  thickness: 2.h,
                                ),
                              ),
                              SizedBox(
                                height: 37.h,
                              ),
                              Column(
                                children: [
                                  ...presentations![_currentIndex]
                                      .points!
                                      .map((e) => items(e))
                                ],
                              )
                            ],
                          ): _currentIndex < totalSteps ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 29,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.h),
                                child: Text(
                                  "${activities![_currentActivityIndexIndex].title}",
                                  style: customTextStyle(
                                      AppColors.blackColor,
                                      18.sp,
                                      'helveticaNeueNormal',
                                      FontWeight.w700),
                                ),
                              ),



                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Container(
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Text('How to', style: customTextStyle(AppColors.blackColor, 14.sp, 'helveticaNeueNormal', FontWeight.w700),),
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Expanded(
                                      child: Container(
                                        color: Colors.green[100],
                                        child: Column(
                                          children: [
                                            SizedBox(height: 15,),
                                            ...activities![_currentActivityIndexIndex]
                                                .howTos!
                                                .map((e) => items(e)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(height: 5,),

                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),

                                    if(activities![_currentActivityIndexIndex].resources!.length > 0)
                                    Container(
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Text('Resources', style: customTextStyle(AppColors.blackColor, 14.sp, 'helveticaNeueNormal', FontWeight.w700),),
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),

                                    if(activities![_currentActivityIndexIndex].resources!.length > 0)
                                    Expanded(
                                      child: Container(
                                        color: Colors.green[100],
                                        child: Column(
                                          children: [
                                            SizedBox(height: 15,),
                                            ...activities![_currentActivityIndexIndex]
                                                .resources!
                                                .map((e) => items(e)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),


                              SizedBox(height: 5,),

                              if(activities![_currentActivityIndexIndex].recap!.length > 0)
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Container(
                                      child: RotatedBox(
                                        quarterTurns: 3,
                                        child: Text('Recap', style: customTextStyle(AppColors.blackColor, 14.sp, 'helveticaNeueNormal', FontWeight.w700),),
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Expanded(
                                      child: Container(
                                        color: Colors.green[100],
                                        child: Column(
                                          children: [
                                            SizedBox(height: 15,),
                                            ...activities![_currentActivityIndexIndex]
                                                .recap!
                                                .map((e) => items(e)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ): Container(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            if(_currentIndex < presentations!.length)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _previous();
                  },
                  child: _currentIndex == 0
                      ? Container()
                      : Container(
                          height: 24.h,
                          width: 24.h,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColors.whiteColor,
                          ),
                        ),
                ),
                InkWell(
                  onTap: () {
                    _next();
                  },
                  child: _currentIndex == totalSteps
                      ? Container()
                      : Container(
                          height: 24.h,
                          width: 24.h,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.whiteColor,
                          ),
                        ),
                ),
              ],
            ),

            if(_currentIndex >= presentations!.length)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _previousActivity();
                  },
                  child: Container(
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),

                _currentIndex == totalSteps - 1
                    ? InkWell(
                  onTap: () async {
                    if(complete) {
                      // int currentSessionIndex = widget.sessionIndex!;
                      String? currentFPId = widget.featuredProjects!.id;//await ss.getItem("current_featured_project");
                      // final fp = featuredProjects.firstWhere((element) => element.id == currentFPId);
                      // if(currentSessionIndex < fp.sessions!.length) {
                      //   final newSession = fp.sessions
                      //
                      // }
                      await ss.setPrefItem("${widget.featuredProjects!.id}_percent_${widget.sessionIndex}", "100", isStoreOnline: false);
                      await ss.setPrefItem("current_featured_project", "", isStoreOnline: false);
                      await ss.setPrefItem("${currentFPId}_session_${widget.sessionIndex}", "done", isStoreOnline: false);
                      await ss.setPrefItem("${currentFPId}_session_${(widget.sessionIndex! + 1)}", "next", isStoreOnline: false);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen()));
                      return;
                    }
                    showFinalOptionDialog(context);
                    // complete ? Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen())) :showFinalOptionDialog(context);
                  },
                  child: complete ? Container(width: 131.w,
                  height: 48.h,
                    decoration: BoxDecoration(
                      color: AppColors.simbiPrimaryColor, 
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text("Complete", style: customTextStyle(AppColors.whiteColor, 13.sp, 'helveticaNeueNormal', FontWeight.w400),),
                    alignment: Alignment.center,
                  ) : Container(
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.whiteColor,
                    ),
                  ),
                )
                    :
                InkWell(
                  onTap: () {
                    _nextActivity();
                  },
                  child: Container(
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 37.h,
            ),
            StepProgressIndicator(
              totalSteps: totalSteps,
              currentStep: _currentIndex + 1,
              size: 6,
              padding: 0,
              selectedColor: AppColors.yellowColor,
              unselectedColor: AppColors.whiteColor,
              roundedEdges: Radius.circular(10),
            ),
            SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                "${_currentIndex + 1}/$totalSteps",
                style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 11.sp,
                    'helveticaNeueNormal', FontWeight.w400),
              ),
            )
          ],
        ),
      )),
    );
  }

  void _previous() {
    setState(() {
      _currentIndex -= 1;
    });
  }

  void _previousActivity() {
    if(_currentActivityIndexIndex > 0){
        _currentActivityIndexIndex -= 1;
    }

    _currentIndex -= 1;

    setState(() {

    });
  }

  void _next() async {
    if (_currentIndex == 3) {
      showOptionDialog(context);
    } else if (_currentIndex == 5) {
      showOptionDialog(context);
    } else {
      setState(() {
        _currentIndex += 1;
      });
      int percent = ((_currentIndex + 1) / (totalSteps) * 100).toInt();
      await ss.setPrefItem("current_featured_project_progress", "${(_currentIndex + 1)}/$totalSteps", isStoreOnline: false);
      await ss.setPrefItem("${widget.featuredProjects!.id}_percent_${widget.sessionIndex}", "$percent", isStoreOnline: false);
      await ss.setPrefItem("current_featured_project_percent", "$percent", isStoreOnline: false);
      await ss.setPrefItem("current_featured_project_duration", "${widget.session!.duration} mins", isStoreOnline: false);
      await ss.setPrefItem("current_featured_project_number", "${widget.session!.number}", isStoreOnline: false);
      await ss.setPrefItem("current_featured_project_title", "${widget.session!.title}", isStoreOnline: false);
      await ss.setPrefItem("current_session_index", "${widget.sessionIndex}", isStoreOnline: false);
    }
  }


  void _nextActivity() {
      if(_currentActivityIndexIndex < activities!.length){
        setState(() {
          _currentActivityIndexIndex += 1;
          _currentIndex += 1;
        });
      }
  }

  Widget items(String benefit) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 26, right: 26),
      child: Row(
        children: [
          Container(
            height: 8.h,
            width: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.redColor),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
              child: Text(
            benefit,
            style: customTextStyle(Color.fromRGBO(99, 111, 130, 1), 14.sp,
                'helveticaNeueNormal', FontWeight.w400),
          ))
        ],
      ),
    );
  }

  void showOptionDialog(BuildContext context) async {
    bool answer = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) =>
            QuestionDialog(widget.session!.question![0]));
    if (answer) {
      setState(() {
        _currentIndex += 1;
      });
    }
  }

  void showFinalOptionDialog(BuildContext context) async {
    bool answer = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) =>
            FinalQuestionDialog(widget.session!.question![0]));
    if (answer) {
      setState(() {
        complete = true;
      });
      String? currentFPId = widget.featuredProjects!.id;
      await ss.setPrefItem("${widget.featuredProjects!.id}_percent_${widget.sessionIndex}", "100", isStoreOnline: false);
      await ss.setPrefItem("current_featured_project", "", isStoreOnline: false);
      await ss.setPrefItem("${currentFPId}_session_${widget.sessionIndex}", "done", isStoreOnline: false);
      await ss.setPrefItem("${currentFPId}_session_${(widget.sessionIndex! + 1)}", "next", isStoreOnline: false);
      showResultDialog(context);
    }
  }

  void showResultDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) =>
            ShowResultDialogDialog(projectSession: widget.session));
  }
}
