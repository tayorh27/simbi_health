/// This is the stateful widget that the main application instantiates.
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/chat_page/chat_page.dart';
import 'package:simbi_health/ui/views/collections/collections.dart';
import 'package:simbi_health/ui/views/home_page/home_page.dart';
import 'package:simbi_health/ui/views/languages/languages.dart';
import 'package:simbi_health/ui/views/notifications/notification.dart';
import 'package:simbi_health/ui/views/profile_page/profile_page.dart';
import 'package:simbi_health/ui/views/projects_page/projects_page.dart';
import 'package:simbi_health/ui/views/s_alert/s_alert.dart';
import 'package:simbi_health/ui/views/splashscreen/splash_screen.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ProjectsScreen(),
    ChatPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Map<String, dynamic>? user = Map();

  StorageSystem ss = new StorageSystem();

  ImageProvider<Object> returnImageAsset() {
    if (user!.isEmpty) {
      return AssetImage("assets/images/drawer_img.png");
    }

    if (user!["picture"] == "") {
      return AssetImage("assets/images/drawer_img.png");
    }
    if ("${user!["picture"]}".startsWith("assets")) {
      return AssetImage(user!["picture"]);
    }
    return NetworkImage(user!["picture"]);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user!["username"] = "";
    user!["picture"] = "";
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
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 240.h,
              width: MediaQuery.of(context).size.width,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      returnImageAsset(), //(user!["picture"] == "") ? AssetImage("assets/images/drawer_img.png") : ("${user!["picture"]}".startsWith("assets")) ? AssetImage(user!["picture"]) : NetworkImage(user!["picture"]),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 64, top: 112.0),
                  child: Column(
                    children: [
                      Text(
                        user!["username"],
                        style: customTextStyle(AppColors.whiteColor, 24.sp,
                            "helveticaNeueNormal", FontWeight.w700),
                      ),
                      Text(
                        "${user!["firstname"]} ${user!["lastname"]}",
                        style: customTextStyle(AppColors.whiteColor, 11.sp,
                            "helveticaNeueNormal", FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/profile.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Profile",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Collections()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/inbox.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "My Collections",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/notification.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Notifications",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SAlert()));
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/support_agent.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "sAlert",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 32.0,
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            //   child: InkWell(
            //     onTap: () {},
            //     child: Row(
            //       children: [
            //         SvgPicture.asset("assets/icons/settings.svg"),
            //         SizedBox(
            //           width: 8.0,
            //         ),
            //         Text(
            //           "Settings",
            //           style: text1TextStyle,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 100,
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            //   child: Row(
            //     children: [
            //       SvgPicture.asset("assets/icons/users.svg"),
            //       SizedBox(
            //         width: 8.0,
            //       ),
            //       Text(
            //         "Invite a friend",
            //         style: text1TextStyle,
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 0.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: InkWell(
                onTap: () async {
                  bool? response = await new GeneralUtils()
                      .displayReturnedValueAlertDialog(context, "Confirmation",
                      "Are you sure you want to logout?",
                      confirmText: "LOGOUT");
                  if (response!) {
                    await FirebaseAuth.instance.signOut();
                    await ss.clearPref();
                    await ss.setPrefItem("boarded", "true",
                        isStoreOnline: false);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Splash();
                        },
                      ),
                          (route) => false,
                    );
                  }
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/logout.svg"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Logout",
                      style: text1TextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CircleAvatar(
                  backgroundImage:
                  returnImageAsset() //AssetImage('assets/images/profile.png'),
              ),
            ),
          );
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Languages()));
                        },
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          child:
                          Image.asset('assets/images/change_language.png'),
                        ),
                      ),
                    ),
                    // SizedBox(height: 5,),
                    Text(
                      "Change\nLanguage",
                      style: customTextStyle(AppColors.blackColor, 6,
                          'helveticaNeueNormal', FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_rounded),
                      color: AppColors.blackColor,
                      iconSize: 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.deepBlueColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.navBarItemColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
