import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/utils/storage.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class GeneralUtils {

  // String userCurrentTimeZone;
  StorageSystem ss = new StorageSystem();

  GeneralUtils() {
    // currentTimeZone();
  }

  Future<Map<String, dynamic>> getUserData() async {
    String? user = await ss.getItem("user");
    Map<String, dynamic> json = jsonDecode(user!);
    return json;
  }

  Future<Null> displayAlertDialog(
      BuildContext context, String _title, String _body) async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text(_title, textAlign: TextAlign.center, style: inputTextStyle,),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/logo/splash_logo.png'),
                ),
                Padding(
                    padding: const EdgeInsets.only(left:30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      _body,textAlign: TextAlign.center,
                      style: inputTextStyle,
                    )),
              ],
            ),
          ),
          actions: <Widget>[
            new TextButton(
              child: new Text('OK', style: TextStyle(color: AppColors.simbiPrimaryColor),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<bool?> displayReturnedValueAlertDialog(
      BuildContext context, String _title, String _body, {String confirmText = "OK"}) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text(_title, textAlign: TextAlign.center, style: inputTextStyle,),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/logo/splash_logo.png'),
                ),
                Padding(
                    padding: const EdgeInsets.only(left:30.0, right: 30.0, top: 30.0),
                    child: new Text(
                      _body,textAlign: TextAlign.center,
                      style: inputTextStyle,
                    )),
              ],
            ),
          ),
          actions: <Widget>[
            new TextButton(
              child: new Text('CANCEL', style: TextStyle(color: Colors.redAccent),),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            new TextButton(
              child: new Text(confirmText, style: TextStyle(color: AppColors.simbiPrimaryColor),),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void showToast(BuildContext context, String msg) {
    Fluttertoast.showToast(
        msg: "$msg",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: AppColors.simbiPrimaryColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  getCurrentDateTime() {
    List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    DateTime date = DateTime.now();
    return "${rewriteTimeValue(date.day)} ${months[date.month - 1]} ${date.year}, ${rewriteTimeValue(date.hour)}:${rewriteTimeValue(date.minute)}";
  }

  rewriteTimeValue(int value) {
    return value < 10 ? "0$value" : "$value";
  }

  Future<void> saveNotification(String title, String message) async {
    List<String> months = ["January", "February", "March", "April", "May","June","July","August","September","October","November","December"];
    List<String> days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    final date = DateTime.now();

    String id = FirebaseDatabase.instance.reference().push().key;
    // await FirebaseFirestore.instance.collection("users").doc(user.uid).collection("notifications").doc(id).set(
    //     {
    //       "id": id,
    //       "title": title,
    //       "message": message,
    //       "created_date": getCurrentDateTime(),
    //       "timestamp": FieldValue.serverTimestamp(),
    //       "header": "${days[date.weekday - 1]} - ${date.day} ${months[date.month - 1]}, ${date.year}"
    //     });
  }

  showFlutterLocalNotification(String title, String body) {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications', // title
      'This channel is used for important notifications.', // description
      importance: Importance.high,
    );
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);
    flutterLocalNotificationsPlugin.show(
        0,
        title,
        body,
        platformChannelSpecifics
    );
  }
}
