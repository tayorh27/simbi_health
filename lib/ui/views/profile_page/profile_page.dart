import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/home_page/home_page.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/ui/views/profile_page/choose_avatar.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _EditProfilePage();
}

class _EditProfilePage extends State<EditProfilePage> {

  TextEditingController _phone = new TextEditingController(text: "");
  TextEditingController _firstName = new TextEditingController(text: "");
  TextEditingController _lastName = new TextEditingController(text: "");
  TextEditingController _username = new TextEditingController(text: "");

  Map<String, dynamic>? user = Map();

  StorageSystem ss = new StorageSystem();
  bool _loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new GeneralUtils().getUserData().then((value) {
      setState(() {
        user = value;
        _firstName.text = user!["firstname"];
        _lastName.text = user!["lastname"];
        _username.text = user!["username"];
        _phone.text = user!["number"];
      });
    });
  }

  ImageProvider<Object> returnImageAsset() {
    if(user!.isEmpty) {
      return AssetImage("assets/images/drawer_img.png");
    }

    if(user!["picture"] == "") {
      return AssetImage("assets/images/drawer_img.png");
    }
    if("${user!["picture"]}".startsWith("assets")) {
      return AssetImage(user!["picture"]);
    }
    return NetworkImage(user!["picture"]);
  }

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
      body: ModalProgressHUD(
    inAsyncCall: _loading,
    opacity: 0.6,
    progressIndicator: CircularProgressIndicator(),
    color: Colors.black,
    child:Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: ListView(
          children: [
            Text(
              "My Profile",
              style: customTextStyle(AppColors.deepBlueColor, 28.sp,
                  "helveticaNeueNormal", FontWeight.w700),
            ),
            SizedBox(
              height: 16.0,
            ),
            InkWell(
              onTap:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseAvatar()),
                );
              },
              child: Center(
                child: CircleAvatar(
                  maxRadius: 64.0,
                  backgroundImage: returnImageAsset(), //AssetImage("assets/images/profile_avatar.png"),
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200.0,
                    child: TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      controller: _firstName,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.borderColor,
                            width: 2.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: AppColors.borderColor, width: 2),
                        ),
                        hintText: 'First name',
                        labelText: 'First name',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 32.0),
                Expanded(
                  child: Container(
                    width: 200.0,
                    child: TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      controller: _lastName,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.borderColor,
                            width: 2.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: AppColors.borderColor, width: 2),
                        ),
                        hintText: 'Last name',
                        labelText: 'Last name',
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 32.0),
            TextFormField(
              obscureText: false,
              keyboardType: TextInputType.text,
              controller: _username,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: AppColors.borderColor,
                    width: 2.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      BorderSide(color: AppColors.borderColor, width: 2),
                ),
                hintText: 'Username',
                labelText: 'Username',
              ),
            ),
            // SizedBox(height: 32.0),
            // TextFormField(
            //   obscureText: false,
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide: BorderSide(
            //         color: AppColors.borderColor,
            //         width: 2.5,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide:
            //           BorderSide(color: AppColors.borderColor, width: 2),
            //     ),
            //     hintText: 'miracleolawuyi@yahoo.com',
            //     labelText: 'Email',
            //   ),
            // ),
            SizedBox(height: 32.0),
            TextFormField(
              obscureText: false,
              keyboardType: TextInputType.number,
              controller: _phone,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: AppColors.borderColor,
                    width: 2.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      BorderSide(color: AppColors.borderColor, width: 2),
                ),
                labelText: 'Phone number',
                hintText: 'Phone number',
              ),
            ),
            // SizedBox(height: 32.0),
            // TextFormField(
            //   obscureText: true,
            //   keyboardType: TextInputType.visiblePassword,
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide: BorderSide(
            //         color: AppColors.borderColor,
            //         width: 2.5,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide:
            //           BorderSide(color: AppColors.borderColor, width: 2),
            //     ),
            //     hintText: 'User@email.com',
            //     labelText: 'Password',
            //   ),
            // ),
            // SizedBox(height: 32.0),
            // TextFormField(
            //   obscureText: true,
            //   keyboardType: TextInputType.visiblePassword,
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide: BorderSide(
            //         color: AppColors.borderColor,
            //         width: 2.5,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide:
            //           BorderSide(color: AppColors.borderColor, width: 2),
            //     ),
            //     hintText: 'User@email.com',
            //     labelText: 'Confirm Password',
            //   ),
            // ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              child: Text(
                "Save changes",
                style: createAccountTextStyle,
              ),
              onPressed: () {
                if (_firstName.text.isEmpty || _lastName.text.isEmpty ||
                    _username.text.isEmpty || _phone.text.isEmpty) {
                  new GeneralUtils().displayAlertDialog(
                      context, 'Error', 'All fields must be filled.');
                  return;
                }
                setState(() {
                  _loading = true;
                });
                firebaseUpdateContinues();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Home()),
                // );
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.simbiPrimaryColor,
                padding: EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  firebaseUpdateContinues() async {
    Map<String, dynamic> newUserData = new Map();
    newUserData['firstname'] = _firstName.text;
    newUserData['lastname'] = _lastName.text;
    newUserData['username'] = _username.text;
    newUserData['number'] = _phone.text;
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!["uid"])
        .update(newUserData)
        .then((v) async {
      Map<String, dynamic> userData = new Map();
      userData['uid'] = user!["uid"];
      userData['email'] = user!["email"];
      userData['firstname'] = _firstName.text;
      userData['lastname'] = _lastName.text;
      userData['picture'] = user!["picture"];
      userData['username'] = _username.text;
      userData['number'] = _phone.text;

      await ss.setPrefItem('user', jsonEncode(userData), isStoreOnline: false);

      // pd.dismissDialog();
      setState(() {
        _loading = false;
      });
      new GeneralUtils().showToast(context, "Profile saved successfully.");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NavScreen()),
      );
    }).catchError((err) {
      // pd.dismissDialog();
      setState(() {
        _loading = false;
      });
      new GeneralUtils().displayAlertDialog(context, "Error", "$err");
    });
  }
}
