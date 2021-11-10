import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simbi_health/data/models/featured_projects.dart' as fp;
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/collections/collections.dart';
import 'package:simbi_health/ui/views/languages/languages.dart';
import 'package:simbi_health/ui/views/notifications/notification.dart';
import 'package:simbi_health/ui/views/profile_page/profile_page.dart';
import 'package:simbi_health/ui/views/project_info/project_sessions_presentation.dart';
import 'package:simbi_health/ui/views/s_alert/s_alert.dart';
import 'package:simbi_health/ui/views/splashscreen/splash_screen.dart';
import 'package:simbi_health/ui/widgets/featured_projects.dart';
import 'package:simbi_health/ui/widgets/project_card.dart';
import 'package:simbi_health/ui/widgets/story_and_blog.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  Map<String, dynamic>? user = Map();

  StorageSystem ss = new StorageSystem();
  String continuedProjectId = "";
  String continuedProjectProgress = "",
      percent = "",
      number = "",
      duration = "",
      title = "",
      current_session_index = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContinuedProjectData();
    user!["username"] = "";
    user!["picture"] = "";
    user!["firstname"] = "";
    user!["lastname"] = "";
    new GeneralUtils().getUserData().then((value) {
      setState(() {
        user = value;
      });
    });
  }

  getContinuedProjectData() async {
    String a = await ss.getItem("current_featured_project") ?? "";
    String b = await ss.getItem("current_featured_project_progress") ?? "";
    String c = await ss.getItem("current_featured_project_percent") ?? "";
    String d = await ss.getItem("current_featured_project_duration") ?? "";
    String e = await ss.getItem("current_featured_project_title") ?? "";
    String f = await ss.getItem("current_featured_project_number") ?? "";
    String g = await ss.getItem("current_session_index") ?? "0";
    setState(() {
      continuedProjectId = a;
      continuedProjectProgress = b;
      percent = c;
      duration = d;
      title = e;
      number = f;
      current_session_index = g;
    });
  }

  ImageProvider<Object> returnImageAsset() {
    if (user!.isEmpty) {
      return AssetImage("assets/images/drawer_img.png");
    }

    if (user!["picture"] == "") {
      return AssetImage("assets/images/drawer_img.png");
    }
    if ("${user!["picture"]}".startsWith("assets")) {
      return AssetImage(user!["picture"]);
    }
    return NetworkImage(user!["picture"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome ${user!["username"]}",
              style: headingTextStyle,
            ),
            SizedBox(
              height: 23.h,
            ),
            ...continueProjectSection(),
            Text(
              "Latest stories & Blog post",
              style: activityTitleTextStyle,
            ),
            SizedBox(
              height: 14,
            ),
            StoryAndBlogCard(),
            SizedBox(
              height: 38,
            ),
            Text(
              "Featured Projects",
              style: activityTitleTextStyle,
            ),
            SizedBox(
              height: 7,
            ),
            FeaturedProjects(),
          ],
        ),
      )),
    );
  }

  List<Widget> continueProjectSection() {
    return (continuedProjectId.isEmpty)
        ? []
        : [
            Text(
              "Pick up from where you stopped!",
              style: activityTitleTextStyle,
            ),
            SizedBox(
              height: 7,
            ),
            InkWell(
              onTap: () {
                if (continuedProjectId.isNotEmpty) {
                  final res = fp.featuredProjects
                      .where((element) => element.id == continuedProjectId)
                      .toList();
                  if (res.isEmpty) return;
                  final session = res[0]
                      .sessions!
                      .firstWhere((element) => element.number == number);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProjectSessionsPresentation(
                                session: session,
    sessionIndex: int.parse(current_session_index),featuredProjects: res[0],
                              )));
                }
              },
              child: ProjectCard(
                title: title,
                duration: duration,
                number: number,
                percent: percent,
                progress: continuedProjectProgress,
              ),
            ),
            SizedBox(
              height: 27,
            ),
          ];
  }
}
