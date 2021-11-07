import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/authentication/sign_in.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final TextEditingController controller = TextEditingController();

  // var languages = ['English', 'Yoruba', 'French'];

  TextEditingController _email = new TextEditingController(text: "");
  TextEditingController _password = new TextEditingController(text: "");
  TextEditingController _phone = new TextEditingController(text: "");
  TextEditingController _firstName = new TextEditingController(text: "");
  TextEditingController _lastName = new TextEditingController(text: "");
  TextEditingController _username = new TextEditingController(text: "");

  StorageSystem ss = new StorageSystem();
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: _loading,
        opacity: 0.6,
        progressIndicator: CircularProgressIndicator(),
    color: Colors.black,
    child:
    Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              "Create Account",
              style: headingTextStyle,
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
                        hintText: 'Enter first name',
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
                        hintText: 'Enter last name',
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
                hintText: 'Choose a unique username',
                labelText: 'User name',
              ),
            ),
            SizedBox(height: 32.0),
            TextFormField(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              controller: _email,
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
                hintText: 'User@email.com',
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 32.0),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              controller: _password,
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
                hintText: 'Password',
                labelText: 'Password',
              ),
            ),
            // SizedBox(height: 32.0),
            // TextFormField(
            //   obscureText: true,
            //   keyboardType: TextInputType.text,
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
              ),
            ),
            // SizedBox(height: 32.0),
            // Row(
            //   children: [
            //     Container(
            //       width: 240,
            //       child: TextFormField(
            //         obscureText: false,
            //         keyboardType: TextInputType.text,
            //         decoration: InputDecoration(
            //           contentPadding:
            //               EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
            //           enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(8.0),
            //             borderSide: BorderSide(
            //               color: AppColors.borderColor,
            //               width: 2.5,
            //             ),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(8.0),
            //             borderSide:
            //                 BorderSide(color: AppColors.borderColor, width: 2),
            //           ),
            //           hintText: 'Choose language',
            //           labelText: 'Language',
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              child: Text(
                "Create an account",
                style: createAccountTextStyle,
              ),
              onPressed: () {
                if (_email.text.isEmpty || _password.text.isEmpty ||
                    _firstName.text.isEmpty || _lastName.text.isEmpty ||
                    _username.text.isEmpty || _phone.text.isEmpty) {
                  new GeneralUtils().displayAlertDialog(
                      context, 'Error', 'All fields must be filled.');
                  return;
                }
                setState(() {
                  _loading = true;
                });
                FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _email.text.toLowerCase(), password: _password.text)
                    .then((usr) {
                  firebaseRegistrationContinues(usr.user);
                }).catchError((err) {
                  setState(() {
                    _loading = false;
                  });
                  new GeneralUtils().displayAlertDialog(
                      context, 'Error', 'An error occurred. Please try again.');
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.simbiPrimaryColor,
                padding: EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "Got an account already?",
                style: text1TextStyle,
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              child: Text(
                "Login",
                style: loginTextStyle,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.whiteColor,
                padding: EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Column(
              children: [
                Text(
                  "By creating an account you agree to our",
                  style: text2TextStyle,
                ),
                SizedBox(height: 8.0),
                Text(
                  "Terms and Conditions",
                  style: text3TextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  firebaseRegistrationContinues(User? firebaseUser) async {
    Map<String, dynamic> newUserData = new Map();
    newUserData['email'] = _email.text.toLowerCase();
    newUserData['firstname'] = _firstName.text;
    newUserData['lastname'] = _lastName.text;
    newUserData['username'] = _username.text;
    newUserData['number'] = _phone.text;
    newUserData['picture'] = "assets/icons/img1.png";

    newUserData['id'] = firebaseUser!.uid;
    newUserData['blocked'] = false;
    newUserData['created_date'] = new DateTime.now().toString();

    // newUserData['msgId'] = [msgId];
    newUserData['timestamp'] = FieldValue.serverTimestamp();
    FirebaseFirestore.instance
        .collection('users')
        .doc(firebaseUser.uid)
        .set(newUserData)
        .then((v) async {
      Map<String, dynamic> userData = new Map();
      userData['uid'] = firebaseUser.uid;
      userData['email'] = _email.text.toLowerCase();
      userData['firstname'] = _firstName.text;
      userData['lastname'] = _lastName.text;
      // userData['msgId'] = [msgId];
      userData['picture'] = "assets/icons/img1.png";
      userData['username'] = _username.text;
      userData['number'] = _phone.text;

      await FirebaseFirestore.instance.collection("users").doc(firebaseUser.uid).collection("setups").doc("user-data").set(
          {
            "init": "true"
          });
      await ss.setPrefItem('loggedin', 'true');
      await ss.setPrefItem('user', jsonEncode(userData));

      // pd.dismissDialog();
      setState(() {
        _loading = false;
      });
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NavScreen();
          },
        ),
            (route) => false,
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
