import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/widgets/session_card.dart';

class ProjectSessionsList extends StatefulWidget {
  final FeaturedProjects? featuredProject;
  const ProjectSessionsList({Key? key, this.featuredProject}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProjectSessionsList();
}

class _ProjectSessionsList extends State<ProjectSessionsList> {


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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp),
            color: AppColors.blackColor,
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "${widget.featuredProject!.projectTitle!}${widget.featuredProject!.projectSubTitle}",
                  style: headingTextStyle,
                )),
              ],
            ),
            Text(
              "Sessions",
              style: headingTextStyle,
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                Text(
                  "Pick a session",
                  style: activityTitleTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            SessionCard(
              featuredProject: widget.featuredProject,
            )
          ],
        ),
      )),
    );
  }
}
