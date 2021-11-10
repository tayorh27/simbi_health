import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/widgets/projects_list.dart';
import 'package:simbi_health/utils/general.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProjectsScreen();
}

class _ProjectsScreen extends State<ProjectsScreen> {

  Map<String, dynamic>? user = Map();

  // StorageSystem ss = new StorageSystem();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
      backgroundColor: AppColors.whiteColor,
      // appBar: AppBar(
      //   backgroundColor: AppColors.whiteColor,
      //   elevation: 0.0,
      //   leading: Padding(padding: EdgeInsets.only(left: 20),
      //   child: CircleAvatar(
      //     backgroundImage: returnImageAsset(), //AssetImage('assets/images/drawer_img.png'),
      //   ),),
      //   actions: [
      //     Padding(padding: EdgeInsets.only(right: 20),
      //     child: Icon(Icons.search, color: AppColors.blackColor, size: 40,),)
      //   ],
      // ),
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
