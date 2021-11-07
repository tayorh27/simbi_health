import 'package:flutter/material.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/project_info/project_info.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
          itemCount: featuredProjects.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final featuredProject = featuredProjects[index];
            return Padding(
              padding: EdgeInsets.only(right: 8),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProjectInfo(
                                featuredProject: featuredProject,
                              )));
                },
                child: Container(
                  height: 220,
                  width: 136,
                  decoration: BoxDecoration(
                    color: featuredProject.containerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 118,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          child: Image.asset(
                            '${featuredProject.image}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 5),
                        child: Row(
                          children: [
                            Text(
                              "${featuredProject.projectTitle}",
                              style: customTextStyle(
                                  featuredProject.firstTextColor!,
                                  16,
                                  'helveticaNeueNormal',
                                  FontWeight.w700),
                            ),
                            Text(
                              "${featuredProject.projectSubTitle}",
                              style: customTextStyle(
                                  featuredProject.secondTextColor!,
                                  16,
                                  'helveticaNeueNormal',
                                  FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 5),
                        child: Row(
                          children: [
                            Text(
                              "Project",
                              style: customTextStyle(
                                  featuredProject.secondTextColor!,
                                  16,
                                  'helveticaNeueNormal',
                                  FontWeight.w700),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: featuredProject.languageContainerColor,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 3),
                                  child: Text(
                                    "${featuredProject.language}",
                                    style: customTextStyle(
                                        featuredProject.languageTextColor!,
                                        7,
                                        'helveticaNeueNormal',
                                        FontWeight.w400),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/project_logo.png',
                              color: featuredProject.languageTextColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
