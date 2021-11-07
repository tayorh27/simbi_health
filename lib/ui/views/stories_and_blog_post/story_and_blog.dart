import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/story.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';

class StoryAndBlog extends StatefulWidget {
  final Story? story;
  const StoryAndBlog({Key? key, this.story}) : super(key: key);

  @override
  _StoryAndBlogState createState() => _StoryAndBlogState();
}

class _StoryAndBlogState extends State<StoryAndBlog> {
  int _currentIndex = 0;
  List<StoryParagraph>? paragraphs;
  @override
  Widget build(BuildContext context) {
    paragraphs = widget.story!.paragraph!;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 290.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.story!.image!),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.2),
                  ],
                )),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.bookmark),
                          color: Colors.white,
                        ),
                      ],
                    )),
                    Positioned(
                        bottom: 50,
                        left: 22.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.story!.title!,
                              style: customTextStyle(
                                  AppColors.whiteColor,
                                  24.sp,
                                  'helveticaNeueNormal',
                                  FontWeight.w700),
                            )
                          ],
                        )),
                    Positioned(
                        left: 50,
                        right: 50,
                        bottom: -27,
                        child: Container(
                          height: 49.h,
                          width: 292.w,
                          decoration: BoxDecoration(
                            color: AppColors.simbiPrimaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 4.h,
                                  ),
                                  Text(
                                    "${widget.story!.time} read",
                                    style: customTextStyle(
                                        AppColors.whiteColor,
                                        12.sp,
                                        'helveticaNeueNormal',
                                        FontWeight.w400),
                                  )
                                ],
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 25.sp, color: Colors.white),
                              ),
                              Text(
                                "By ${widget.story!.author}",
                                style: customTextStyle(
                                    AppColors.whiteColor,
                                    12.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 44.h,
            ),
            if (_currentIndex == paragraphs!.length)
              Column(
                children: [...widget.story!.lesson!.map((e) => items(e))],
              ),
            if (_currentIndex < paragraphs!.length)
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "${paragraphs![_currentIndex].text}",
                      style: customTextStyle(Color.fromRGBO(99, 111, 130, 1),
                          13.sp, 'helveticaNeueNormal', FontWeight.w400),
                    ),
                  ))
                ],
              ),
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      _previous();
                    },
                    child: _currentIndex == 0
                        ? Container()
                        : Container(
                            height: 24.h,
                            width: 24.h,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.arrow_back,
                              color: AppColors.whiteColor,
                            ),
                          ),
                  ),
                  if (_currentIndex < paragraphs!.length)
                    Text('${_currentIndex + 1}/${paragraphs!.length}'),
                  if (_currentIndex < paragraphs!.length)
                    InkWell(
                      onTap: () {
                        _next();
                      },
                      child: _currentIndex == paragraphs!.length - 1
                          ? Container()
                          : Container(
                              height: 24.h,
                              width: 24.h,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(
                                Icons.arrow_forward,
                                color: AppColors.whiteColor,
                              ),
                            ),
                    ),
                  if (_currentIndex == paragraphs!.length - 1)
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex += 1;
                        });
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              'Take Lessons',
                              style: customTextStyle(
                                  Color.fromRGBO(27, 181, 92, 1),
                                  13.sp,
                                  'helveticaNeueNormal',
                                  FontWeight.w400),
                            ),
                            SizedBox(
                              width: 11.h,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.simbiPrimaryColor,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                  if (_currentIndex > paragraphs!.length - 1)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.w, vertical: 14.h),
                        width: 131.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            color: AppColors.simbiPrimaryColor,
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Row(
                          children: [
                            Text(
                              'Complete',
                              style: customTextStyle(Colors.white, 13.sp,
                                  'helveticaNeueNormal', FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  void _previous() {
    setState(() {
      _currentIndex -= 1;
    });
  }

  void _next() {
    setState(() {
      _currentIndex += 1;
    });
  }

  Widget items(String benefit) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 26, right: 26),
      child: Row(
        children: [
          Container(
            height: 8.h,
            width: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.redColor),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
              child: Text(
            benefit,
            style: customTextStyle(Color.fromRGBO(99, 111, 130, 1), 13.sp,
                'helveticaNeueNormal', FontWeight.w400),
          ))
        ],
      ),
    );
  }
}
