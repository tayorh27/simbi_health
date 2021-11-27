import 'package:flutter/material.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/styles.dart';

class AboutProject extends StatelessWidget {
  final FeaturedProjects? featuredProject;
  const AboutProject({
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
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  image: DecorationImage(
                      image: AssetImage('${featuredProject!.image}'),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                      )),
                  Positioned(
                      top: 150,
                      left: 30,
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
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11, vertical: 4),
                              child: Text(
                                '${featuredProject!.language}',
                                style: customTextStyle(Colors.white, 13,
                                    'helveticaNeueNormal', FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "About Project",
                        style: customTextStyle(Colors.black, 18,
                            'helveticaNeueNormal', FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                              '${featuredProject!.projectTitle} ${featuredProject!.projectSubTitle}  ${featuredProject!.about}'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
