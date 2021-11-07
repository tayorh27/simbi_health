import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simbi_health/data/models/story.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/stories_and_blog_post/story_and_blog.dart';

class StoryAndBlogCard extends StatelessWidget {
  const StoryAndBlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView.builder(
            itemCount: stories.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final story = stories[index];
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 120,
                  width: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoryAndBlog(
                                    story: story,
                                  )));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            height: 101,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                                child: Image.asset(
                                  '${story.image}',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 120,
                                    child: Text(
                                      '${story.title}',
                                      style: customTextStyle(
                                          Color.fromRGBO(12, 55, 117, 1),
                                          12,
                                          'helveticaNeueNormal',
                                          FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                height: 10,
                                thickness: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Language:',
                                    style: customTextStyle(
                                        AppColors.textTitleColor,
                                        9,
                                        'helveticaNeueNormal',
                                        FontWeight.w400),
                                  ),
                                  Container(
                                    child: Text(
                                      ' ${story.language}',
                                      style: customTextStyle(
                                          AppColors.deepBlueColor,
                                          9,
                                          'helveticaNeueNormal',
                                          FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
