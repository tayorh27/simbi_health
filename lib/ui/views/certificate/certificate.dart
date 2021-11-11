import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ViewCertificate extends StatefulWidget {
  // final String? youTubeLink;
  final Session? projectSession;
  const ViewCertificate({Key? key, this.projectSession}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ViewCertificate();
}

class _ViewCertificate extends State<ViewCertificate> {
  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();

  Map<String, dynamic>? user = Map();

  StorageSystem ss = new StorageSystem();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user!["firstname"] = "";
    user!["lastname"] = "";
    new GeneralUtils().getUserData().then((value) {
      setState(() {
        user = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        // backgroundColor: AppColors.whiteColor,
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
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Screenshot(
                      controller: screenshotController,
                      child: Stack(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 600.0,
                              // padding: EdgeInsets.only(left:20.0, right:20.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/certificate.png")))),
                          Positioned(
                              child: Text(
                                  "${user!["firstname"]} ${user!["lastname"]}",
                                  textAlign: TextAlign.center,
                                  style: customTextStyle(
                                      AppColors.whiteColor,
                                      25.sp,
                                      'helveticaNeueNormal',
                                      FontWeight.w100)),
                              top: 190.h,
                              left: 60.h),
                          Positioned(
                              child: Text(
                                  "You have successfully completed a \nmini course in",
                                  textAlign: TextAlign.center,
                                  style: customTextStyle(
                                      AppColors.whiteColor,
                                      10.sp,
                                      'helveticaNeueNormal',
                                      FontWeight.w100)),
                              top: 250.h,
                              left: 80.h),
                          Positioned(
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.yellowColor,
                                        width: 2.0)),
                                child: Text("${widget.projectSession!.title}",
                                    textAlign: TextAlign.center,
                                    style: customTextStyle(
                                        AppColors.whiteColor,
                                        10.sp,
                                        'helveticaNeueNormal',
                                        FontWeight.w700)),
                              ),
                              top: 300.h,
                              left: 80.h),
                        ],
                      )),
                  SizedBox(
                    height: 3.h,
                  ),
                  InkWell(
                    child: Text("Download certificate",
                        style: customTextStyle(AppColors.yellowColor, 14.sp,
                            'helveticaNeueNormal', FontWeight.w700)),
                    onTap: () {
                      shareImage(false);
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  InkWell(
                    onTap: () {
                      shareImage(true);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset("assets/images/twitter.png"),
                        ),
                        SizedBox(
                          width: 34.w,
                        ),
                        Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset("assets/images/instagram.png"),
                        ),
                        SizedBox(
                          width: 34.w,
                        ),
                        Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset("assets/images/fb.png"),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }

  shareImage(bool share) async {
    // File file = await service.takeWidgetShot(key,
    //     '${(await getTemporaryDirectory()).path}/${new DateTime.now().toString()}.png',
    //     pixelRatio: 16 / 9);
    String fileName = DateTime.now().microsecondsSinceEpoch.toString();
    await screenshotController
        .capture(delay: const Duration(milliseconds: 10), pixelRatio: 16 / 9)
        .then((image) async {
      if (image != null) {
        final directory = await getApplicationDocumentsDirectory();
        final imagePath =
            await File('${directory.path}/image_$fileName.png').create();
        await imagePath.writeAsBytes(image);

        /// Share Plugin
        if (share)
          await Share.shareFiles([imagePath.path],
              text: "My Simbi Health Certificate.");
      }
    });
    // Share.shareFiles(['${file.path}'], text: "My Simbi Health Certificate.");
  }
}
