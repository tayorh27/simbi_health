import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/collections/collections.dart';
import 'package:simbi_health/ui/views/languages/languages.dart';
import 'package:simbi_health/ui/views/notifications/notification.dart';
import 'package:simbi_health/ui/views/profile_page/profile_page.dart';
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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

  ImageProvider<Object> returnImageAsset() {
    if(user!.isEmpty) {
      return AssetImage("assets/images/drawer_img.png");
    }

    if(user!["picture"] == "") {
      return AssetImage("assets/images/drawer_img.png");
    }
    if("${user!["picture"]}".startsWith("assets")) {
      return AssetImage(user!["picture"]);
    }
    return NetworkImage(user!["picture"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200.h,
              width: MediaQuery.of(context).size.width,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: returnImageAsset(), //(user!["picture"] == "") ? AssetImage("assets/images/drawer_img.png") : ("${user!["picture"]}".startsWith("assets")) ? AssetImage(user!["picture"]) : NetworkImage(user!["picture"]),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 64, top: 112.0),
                  child: Column(
                    children: [
                      Text(
                        user!["username"],
                        style: customTextStyle(AppColors.whiteColor, 24.sp,
                            "helveticaNeueNormal", FontWeight.w700),
                      ),
                      Text(
                        "${user!["firstname"]} ${user!["lastname"]}",
                        style: customTextStyle(AppColors.whiteColor, 11.sp,
                            "helveticaNeueNormal", FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/profile.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Profile",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Collections()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/inbox.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "My Collections",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/notification.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Notifications",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SAlert()));
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/support_agent.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Alerts",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 32.0,
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            //   child: InkWell(
            //     onTap: () {},
            //     child: Row(
            //       children: [
            //         SvgPicture.asset("assets/icons/settings.svg"),
            //         SizedBox(
            //           width: 8.0,
            //         ),
            //         Text(
            //           "Settings",
            //           style: text1TextStyle,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 100,
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            //   child: Row(
            //     children: [
            //       SvgPicture.asset("assets/icons/users.svg"),
            //       SizedBox(
            //         width: 8.0,
            //       ),
            //       Text(
            //         "Invite a friend",
            //         style: text1TextStyle,
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 0.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () async{
                  bool? response = await new GeneralUtils().displayReturnedValueAlertDialog(context, "Confirmation", "Are you sure you want to logout?", confirmText: "LOGOUT");
                  if(response!) {
                    await FirebaseAuth.instance.signOut();
                    await ss.clearPref();
                    await ss.setPrefItem("boarded", "true", isStoreOnline: false);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Splash();
                        },
                      ),
                          (route) => false,
                    );
                  }
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/logout.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Logout",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CircleAvatar(
                backgroundImage: returnImageAsset()//AssetImage('assets/images/profile.png'),
              ),
            ),
          );
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Languages()));
                        },
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          child:
                              Image.asset('assets/images/change_language.png'),
                        ),
                      ),
                    ),
                    // SizedBox(height: 5,),
                    Text(
                      "Change\nLanguage",
                      style: customTextStyle(AppColors.blackColor, 6,
                          'helveticaNeueNormal', FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_rounded),
                      color: AppColors.blackColor,
                      iconSize: 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
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
            Text(
              "Pick up from where you stopped!",
              style: activityTitleTextStyle,
            ),
            SizedBox(
              height: 7,
            ),
            ProjectCard(),
            SizedBox(
              height: 27,
            ),
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
}
