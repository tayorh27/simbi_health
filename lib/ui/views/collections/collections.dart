import 'package:flutter/material.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/views/collections/project_card.dart';

class Collections extends StatefulWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  _CollectionsState createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: AppColors.blackColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      "Collections",
                      style: customTextStyle(AppColors.deepBlueColor, 28.sp,
                          "helveticaNeueNormal", FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    padding: EdgeInsets.all(24),
                    child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("Sessions"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Notes"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Stories"),
                            value: 3,
                          ),
                        ],
                        hint: Text("All")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Text("5 minutes ago"),
            SizedBox(
              height: 16.0,
            ),
            ProjectCard(),
            SizedBox(
              child: Divider(
                color: AppColors.yellowColor,
              ),
              height: 32.0,
            ),
            SizedBox(
              height: 16.0,
            ),
            Text("23 days ago"),
            SizedBox(
              height: 16.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: AppColors.greyColor,
                ),
              ),
              child: ListTile(
                title: Text(
                  "Lorem ipsum dolor sit amet",
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: AppColors.greyColor,
                ),
              ),
              child: ListTile(
                title: Text(
                  "Lorem ipsum dolor sit amet",
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(
              child: Divider(
                color: AppColors.yellowColor,
              ),
              height: 40.0,
            ),
            Text("12 Sept 2021"),
            SizedBox(
              height: 16.0,
            ),
            Container(
              child: Row(
                children: [
                  Image.asset("assets/images/home_view_img1.png"),
                  SizedBox(
                    height: 4.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "The Koroba featuring balabala story",
                        style: customTextStyle(AppColors.deepBlueColor, 14.sp,
                            'helveticaNeueNormal', FontWeight.w600),
                      ),
                      SizedBox(
                        child: Divider(
                          color: AppColors.greyColor,
                        ),
                        height: 32.0,
                      ),
                      Text(
                        "Language: Hausa",
                        style: activityTitleTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
