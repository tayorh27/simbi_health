import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/project_info/project_info.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: featuredProjects.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
          final project = featuredProjects[index];
          return Padding(padding: EdgeInsets.only(
            bottom: 17.h,
          ),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ProjectInfo(featuredProject: project,)));
              },
              child: Container(
                height: 113,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Card(
                  color: project.containerColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  child: Row(
                    children: [
                      Container(
                        width: 128.h,
                        decoration: BoxDecoration(
                          color: project.containerColor,
                          image: DecorationImage(image: AssetImage(project.image!),
                          fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5.r),
                          bottomLeft: Radius.circular(5.r)),
                        ),
                      ),

                      Container(
                        height: 113.h,
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(children: [
                                Text(project.projectTitle!, style: customTextStyle(project.firstTextColor!, 18.sp, 'helveticaNeueNormal', FontWeight.w700)),
                                Text('${project.projectSubTitle!} Project', style: customTextStyle(project.firstTextColor!, 18.sp, 'helveticaNeueNormal', FontWeight.w700),),
                              ],),
                            ),

                            SizedBox(height: 11.h,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: project.languageContainerColor,
                                  borderRadius: BorderRadius.circular(5.r)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                                  child: Text('${project.language}',style: customTextStyle(project.languageTextColor!, 10.sp, 'helveticaNeueNormal', FontWeight.w400),),
                                ),
                              )
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 160.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/project_logo.png', color: project.languageTextColor,)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          }),
    );
  }
}
