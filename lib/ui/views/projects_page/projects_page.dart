import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/widgets/projects_list.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: Padding(padding: EdgeInsets.only(left: 20),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/drawer_img.png'),
        ),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.search, color: AppColors.blackColor, size: 40,),)
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Projects", style: headingTextStyle,),
              ],
            ),

            SizedBox(height: 35.h,),
            ProjectsList(),
          ],
        ),
      )),
    );
  }
}
