import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/project_info/project_sessions_presentation.dart';
import 'package:simbi_health/ui/widgets/reusable_widgets.dart';
import 'package:simbi_health/utils/storage.dart';

class ProjectSessionIntro extends StatefulWidget {
  final FeaturedProjects? featuredProject;
  final int? sessionIndex;
  final Session? session;
  const ProjectSessionIntro({Key? key, this.featuredProject, this.session, this.sessionIndex})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProjectSessionIntro();
}

class _ProjectSessionIntro extends State<ProjectSessionIntro> {


  StorageSystem ss = new StorageSystem();

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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                children: [
                  Text(
                    "Session ${widget.session!.number!}",
                    style: activityTitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                '${widget.session!.title}',
                style: customTextStyle(AppColors.blackColor, 18.sp,
                    'helveticaNeueNormal', FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Container(
                height: 218.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${widget.session!.sessionImage}"),
                        fit: BoxFit.cover)),
                // child: Center(
                //   child: InkWell(
                //       onTap: () {},
                //       child: Icon(
                //         Icons.play_circle_outline,
                //         size: 50,
                //         color: Colors.white,
                //       )),
                // ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nasceturjusto, neque id semper. Et augue gravida tempor sagittis. Elit purusid mattis euismod nec scelerisque risus donec.",
                        style: customTextStyle(Color.fromRGBO(139, 139, 139, 1),
                            11.sp, 'helveticaNeueNormal', FontWeight.w300),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 62.h,
                  ),
                  customElevatedButton(
                      text: "Skip",
                      onPress: () async {
                        await ss.setPrefItem("current_featured_project", widget.featuredProject!.id!, isStoreOnline: false);
                        await ss.setPrefItem("${widget.featuredProject!.id!}", "init");
                        // ss.setPrefItem("current_session_pr", widget.featuredProject!.id!, isStoreOnline: false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProjectSessionsPresentation(
                                      session: widget.session,
                                        sessionIndex: widget.sessionIndex,
                                      featuredProjects: widget.featuredProject,
                                    )));
                      },
                      textColor: AppColors.whiteColor)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
