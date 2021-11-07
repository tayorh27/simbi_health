import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/authentication/sign_up.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController _email = new TextEditingController(text: "");
  TextEditingController _password = new TextEditingController(text: "");

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
    child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 32.0),
        child: ListView(
          children: [
            Text(
              "Login",
              style: headingTextStyle,
            ),
            SizedBox(
              height: 64.0,
            ),
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
                labelText: 'Email Address',
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
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              child: Text(
                "Login",
                style: createAccountTextStyle,
              ),
              onPressed: () {
                if(_email.text.isEmpty || _password.text.isEmpty) {
                  new GeneralUtils().displayAlertDialog(
                      context, 'Error', 'All fields must be filled.');
                  return;
                }
                setState(() {
                  _loading = true;
                });
                FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text.toLowerCase(), password: _password.text).then((usr) {
                  firebaseLoginContinues(usr.user);
                }).catchError((err) {
                  setState(() {
                    _loading = false;
                  });
                  new GeneralUtils().displayAlertDialog(
                      context, 'Error', 'An error occurred. Please try again.');
                });
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
                "Don't have an account",
                style: text1TextStyle,
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              child: Text(
                "Create an account ",
                style: loginTextStyle,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.whiteColor,
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

  firebaseLoginContinues(User? firebaseUser) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(firebaseUser!.uid)
        .get()
        .then((result) async {
      //check if user exists in database
      if (!result.exists) {
        FirebaseAuth.instance.signOut();
        // pd.dismissDialog();
        setState(() {
          _loading = false;
        });
        new GeneralUtils().displayAlertDialog(
            context, 'Error', 'User does not exist. Please create an account.');
        return;
      }
      //check if user has been blocked
      Map<String, dynamic>? user = result.data();
      bool blocked = user!['blocked'];
      if (blocked) {
        FirebaseAuth.instance.signOut();
        // pd.dismissDialog();
        setState(() {
          _loading = false;
        });
        new GeneralUtils().displayAlertDialog(context, 'Error',
            'Sorry, user has been blocked. Please contact support.');
      }
      Map<String, dynamic> userData = new Map();
      userData['uid'] = firebaseUser.uid;
      userData['email'] = _email.text.toLowerCase();
      userData['firstname'] = user['firstname'];
      userData['lastname'] = user['lastname'];
      userData['picture'] = user['picture'];
      userData['username'] = user['username'];
      userData['number'] = user['number'];
      // userData['msgId'] = user['msgId'];
      ss.setPrefItem('loggedin', 'true');
      ss.setPrefItem('user', jsonEncode(userData));

      DocumentSnapshot query = await FirebaseFirestore.instance.collection("users").doc(firebaseUser.uid).collection("setups").doc("user-data").get();
      if(query.exists) {
        Map<String, dynamic>? userSetup = query.data();
        userSetup!.forEach((key, value) async {
          await ss.setPrefItem(key, value, isStoreOnline: false);
        });
        gotoHome();
      }else {
        gotoHome();
      }
    }).catchError((err) {
      FirebaseAuth.instance.signOut();
      // pd.dismissDialog();
      setState(() {
        _loading = false;
      });
      new GeneralUtils().displayAlertDialog(
          context, 'Error', 'An error occurred. Please try again.');
      return;
    });
  }

  void gotoHome() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) {
          return NavScreen();
        },
      ),
          (route) => false,
    );
  }
}
