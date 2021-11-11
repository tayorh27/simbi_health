import 'package:flutter/material.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/video_player/youtube_video_player.dart';

class ProjectVideos extends StatelessWidget {
  final FeaturedProjects? featuredProject;
  const ProjectVideos({Key? key, this.featuredProject}) : super(key: key);

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
                        "Project Videos",
                        style: customTextStyle(Colors.black, 18,
                            'helveticaNeueNormal', FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: ListView.builder(
                        itemCount: featuredProject!.videos!.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          final video = featuredProject!.videos![index];
                          return Padding(
                            padding: EdgeInsets.only(bottom: 18.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 117,
                                    width: 178,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage('${video.image}'),
                                            fit: BoxFit.cover),
                                        color: Colors.blue),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 50,
                                            top: 40,
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) => YoutubeVideoPlayer(
                                                          youTubeLink: video.link,
                                                        )));
                                              },
                                              icon: Icon(
                                                  Icons.play_circle_outline),
                                              iconSize: 35,
                                              color: AppColors.whiteColor,
                                            )),
                                        Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            height: 21,
                                            decoration: BoxDecoration(
                                                color: AppColors.yellowColor,
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(5),
                                                    topLeft:
                                                        Radius.circular(5))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 5),
                                              child: Text(
                                                video.duration!,
                                                style: customTextStyle(
                                                    AppColors.whiteColor,
                                                    10,
                                                    'helveticaNeueNormal',
                                                    FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${video.projectTitle}',
                                      style: customTextStyle(
                                          Colors.black,
                                          14,
                                          'helveticaNeueNormal',
                                          FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text('${video.yearUploaded}',
                                        style: customTextStyle(
                                            AppColors.yellowColor,
                                            9,
                                            'helveticaNeueNormal',
                                            FontWeight.w400))
                                  ],
                                ))
                              ],
                            ),
                          );
                        }),
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
