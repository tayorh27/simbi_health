import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/project_info/about_project.dart';
import 'package:simbi_health/ui/views/project_info/project_gallery.dart';
import 'package:simbi_health/ui/views/project_info/project_sessions_list.dart';
import 'package:simbi_health/ui/views/project_info/project_videos.dart';

class ProjectInfo extends StatelessWidget {
  final FeaturedProjects? featuredProject;
  const ProjectInfo({
    Key? key,
    this.featuredProject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 233.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  image: DecorationImage(
                      image: AssetImage('${featuredProject!.image}'),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.1),
                  ],
                )),
                child: Stack(
                  children: [
                    Positioned(
                        top: 25.h,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        )),
                    Positioned(
                        top: 150.h,
                        left: 30.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/project_logo.png"),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "${featuredProject!.projectTitle!} ${featuredProject!.projectSubTitle!} Project",
                              style: customTextStyle(Colors.white, 24,
                                  'helveticaNeueNormal', FontWeight.w700),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 25.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.3),
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 11.w, vertical: 4.h),
                                child: Text(
                                  '${featuredProject!.language}',
                                  style: customTextStyle(Colors.white, 13.sp,
                                      'helveticaNeueNormal', FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectSessionsList(
                                      featuredProject: featuredProject,
                                    )));
                      },
                      title: Text(
                        "Session",
                        style: customTextStyle(Colors.black, 14,
                            'helveticaNeueNormal', FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutProject(
                                      featuredProject: featuredProject,
                                    )));
                      },
                      title: Text(
                        "About Project",
                        style: customTextStyle(Colors.black, 14,
                            'helveticaNeueNormal', FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectGallery(
                                      featuredProject: featuredProject,
                                    )));
                      },
                      title: Text(
                        "Gallery",
                        style: customTextStyle(Colors.black, 14,
                            'helveticaNeueNormal', FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectVideos(
                                      featuredProject: featuredProject,
                                    )));
                      },
                      title: Text(
                        "Videos",
                        style: customTextStyle(Colors.black, 14,
                            'helveticaNeueNormal', FontWeight.w400),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
