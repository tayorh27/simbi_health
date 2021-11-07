import 'dart:async';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/authentication/sign_up.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();

  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 2000),
            pageBuilder: (context, animation, __) {
              return FadeTransition(
                opacity: animation,
                child: SignUp(),
              );
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            return ListView(
              children: [
                pages[index],
                SizedBox(height: 20),
                PageViewDotIndicator(
                  currentItem: index,
                  count: pages.length,
                  unselectedColor: AppColors.whiteColor,
                  selectedColor: AppColors.simbiPrimaryColor,
                  size: const Size(12, 12),
                  unselectedSize: const Size(8, 8),
                  duration: const Duration(milliseconds: 100),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ],
            );
          },
          itemCount: pages.length,
        ),
      ),
    );
  }
}

class PageViewOnboarding extends StatelessWidget {
  final String? image, logo, title, subtitle;
  const PageViewOnboarding({
    Key? key,
    this.image,
    this.logo,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: theme.height * .55,
              width: theme.width * .99,
              child: Image.asset(image!, fit: BoxFit.cover),
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
            height: theme.height * .10,
            width: theme.width * .15,
            child: Image.asset(logo!, fit: BoxFit.cover)),
        Text(
          title!,
          textAlign: TextAlign.center,
          style: onBoardingBoldText,
        ),
        SizedBox(height: 20),
        Text(
          subtitle!,
          textAlign: TextAlign.center,
          style: onBoardingFaintText,
        ),
      ],
    );
  }
}

final List<Widget> pages = [
  PageViewOnboarding(
    title: '''Get access to quality'''
        ''' mental and sexual health'''
        ''' information''',
    subtitle: 'Improve your mental and sexual health',
    image: 'assets/images/splash_view1.png',
    logo: 'assets/logo/splash_logo.png',
  ),
  PageViewOnboarding(
    title: '''Health, information'''
        ''' for everyone, everywhere ''',
    subtitle: 'Read Health information in your language',
    image: 'assets/images/splash_view2.png',
    logo: 'assets/logo/splash_logo.png',
  ),
];
