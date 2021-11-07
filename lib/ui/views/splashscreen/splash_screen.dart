import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/authentication/sign_in.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/ui/views/onboarding/onboarding.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/utils/storage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  StorageSystem ss = new StorageSystem();

  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);

    controller.forward();

    Timer(
      const Duration(seconds: 5),
      () {
        afterTimer();
      }
    );
  }

  afterTimer() async {
    String logged = await ss.getItem("loggedin") ?? '';

    final boarded = await ss.getItem("boarded") ?? '';

    //check if user has viewed the boarding screens
    if (boarded.isEmpty || boarded == "false") {
      await ss.setPrefItem("boarded", "true");
      gotoOnBoardingScreen();
      return;
    }

    //check if user is logged in
    if(logged == "true") {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NavScreen();
          },
        ),
            (route) => false,
      );
      return;
    }

    //if user is not logged in
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 2000),
          pageBuilder: (context, animation, __) {
            return FadeTransition(
              opacity: animation,
              child: SignIn(),
            );
          }),
    );
  }

  gotoOnBoardingScreen() {
    Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, __) {
              return FadeTransition(
                opacity: animation,
                child: Onboarding(),
              );
            }));
  }


  @override
  Widget build(BuildContext context) {
    screenAwareSize(dynamic i, BuildContext context) {}
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ScaleTransition(
          scale: animation,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.25,),
              Image(
                image: const AssetImage(
                  "assets/logo/splash_logo.png",
                ),
                height: screenAwareSize(80, context),
                width: screenAwareSize(66.68, context),
              ),

              SizedBox(height: 10.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SimbiHealth", style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 24.h, 'helveticaNeueNormal', FontWeight.w700),),
                ],
              ),

              SizedBox(height: 30.h,),

              Expanded(
                child: Container(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: images!.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) =>
                    new Container(
                      decoration: BoxDecoration(
                          color: AppColors.deepBlueColor,
                          image: DecorationImage(
                              image: AssetImage(
                                  '${images![index]}'),
                              fit: BoxFit.cover)),
                    ),
                    staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(1, index.isEven ? 2 : 1),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
