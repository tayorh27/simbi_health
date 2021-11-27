import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/ui/widgets/reusable_widgets.dart';
import 'package:simbi_health/utils/general.dart';

enum For { personal, forSomeone }
enum Gender { male, female }

class SAlertReport extends StatefulWidget {
  const SAlertReport({Key? key}) : super(key: key);

  @override
  State<SAlertReport> createState() => _SAlertReportState();
}

class _SAlertReportState extends State<SAlertReport> {
  For? _for = For.personal;
  Gender? _gender = Gender.male;

  bool _loading = false;
  String forWhom = "Personal";
  String gender =  "male";

  TextEditingController _email = new TextEditingController(text: "");
  TextEditingController _reporterName = new TextEditingController(text: "");
  TextEditingController _phone = new TextEditingController(text: "");
  TextEditingController _abusedName = new TextEditingController(text: "");
  TextEditingController _location = new TextEditingController(text: "");
  TextEditingController _details = new TextEditingController(text: "");
  TextEditingController _age = new TextEditingController(text: "");

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
          child: SafeArea(
              child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "sAlert",
                      style: headingTextStyle,
                    )),
                  ],
                ),
                SizedBox(
                  height: 27.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<For>(
                        title: Text('Personal',
                            style: customTextStyle(
                                Color.fromRGBO(204, 211, 221, 1),
                                13.sp,
                                'helveticaNeueNormal',
                                FontWeight.w400)),
                        value: For.personal,
                        groupValue: _for,
                        activeColor: AppColors.simbiPrimaryColor,
                        onChanged: (For? value) {
                          setState(() {
                            _for = value;
                            forWhom = "Personal";
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<For>(
                        title: Text(
                          'For Someone',
                          style: customTextStyle(
                              Color.fromRGBO(204, 211, 221, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400),
                        ),
                        value: For.forSomeone,
                        groupValue: _for,
                        activeColor: AppColors.simbiPrimaryColor,
                        onChanged: (For? value) {
                          setState(() {
                            _for = value;
                            forWhom = "Someone";
                          });
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.h,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      controller: _reporterName,
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
                          hintText: 'Name of reporter',
                          labelText: "Reporter's name",
                          hintStyle: customTextStyle(
                              Color.fromRGBO(204, 211, 221, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400),
                          labelStyle: customTextStyle(
                              Color.fromRGBO(0, 0, 0, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
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
                          hintText: 'useremail.com',
                          labelText: "Email",
                          hintStyle: customTextStyle(
                              Color.fromRGBO(204, 211, 221, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400),
                          labelStyle: customTextStyle(
                              Color.fromRGBO(0, 0, 0, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.phone,
                            controller: _phone,
                            maxLength: 11,
                            decoration: InputDecoration(
                                counterText: "",
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
                                hintText: '09095355159',
                                labelText: "Phone no.",
                                hintStyle: customTextStyle(
                                    Color.fromRGBO(204, 211, 221, 1),
                                    13.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400),
                                labelStyle: customTextStyle(
                                    Color.fromRGBO(0, 0, 0, 1),
                                    13.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400)),
                          ),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Expanded(
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.text,
                            controller: _abusedName,
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
                                hintText: 'Robert Yelp',
                                labelText: "Name of abused",
                                hintStyle: customTextStyle(
                                    Color.fromRGBO(204, 211, 221, 1),
                                    13.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400),
                                labelStyle: customTextStyle(
                                    Color.fromRGBO(0, 0, 0, 1),
                                    13.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      controller: _location,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.add_location,
                            color: AppColors.blackColor,
                          ),
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
                          // hintText: 'Robert Yelp',
                          labelText: "Location",
                          hintStyle: customTextStyle(
                              Color.fromRGBO(204, 211, 221, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400),
                          labelStyle: customTextStyle(
                              Color.fromRGBO(0, 0, 0, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TextFormField(
                      obscureText: false,
                      controller: _details,
                      maxLines: 10,
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
                          hintText: 'Enter detail of event',
                          labelText: "Details",
                          hintStyle: customTextStyle(
                              Color.fromRGBO(204, 211, 221, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400),
                          labelStyle: customTextStyle(
                              Color.fromRGBO(0, 0, 0, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: Text('Female',
                                style: customTextStyle(
                                    Color.fromRGBO(204, 211, 221, 1),
                                    8.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400)),
                            value: Gender.female,
                            groupValue: _gender,
                            activeColor: AppColors.simbiPrimaryColor,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                                gender = "female";
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: Text('Male',
                                style: customTextStyle(
                                    Color.fromRGBO(204, 211, 221, 1),
                                    13.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400)),
                            value: Gender.male,
                            groupValue: _gender,
                            activeColor: AppColors.simbiPrimaryColor,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                                gender = "male";
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      controller: _age,
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
                          hintText: '17',
                          labelText: "Age of the abused",
                          hintStyle: customTextStyle(
                              Color.fromRGBO(204, 211, 221, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400),
                          labelStyle: customTextStyle(
                              Color.fromRGBO(0, 0, 0, 1),
                              13.sp,
                              'helveticaNeueNormal',
                              FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    customElevatedButton(
                        text: "Submit",
                        textColor: AppColors.whiteColor,
                        onPress: submitReport),
                    SizedBox(
                      height: 36.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Terms and Conditions",
                            style: customTextStyle(AppColors.yellowColor, 9.sp,
                                'helveticaNeueNormal', FontWeight.w400)),
                        SizedBox(
                          width: 3.h,
                        ),
                        Text("apply.",
                            style: customTextStyle(Color.fromRGBO(0, 0, 0, 1),
                                9.sp, 'helveticaNeueNormal', FontWeight.w400)),
                      ],
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                  ],
                ))
              ],
            ),
          )),
        ));
  }

  Future<void> submitReport() async {
    if(_email.text.isEmpty || _reporterName.text.isEmpty || _details.text.isEmpty || _phone.text.isEmpty || _abusedName.text.isEmpty || _location.text.isEmpty || _age.text.isEmpty) {
      new GeneralUtils().displayAlertDialog(context, "Attention", "All fields must be filled");
      return;
    }
    setState(() {
      _loading = true;
    });
    String key = FirebaseFirestore.instance.collection("reports").doc().id;
    Map<String, dynamic> data = new Map();
    data["email"] = _email.text;
    data["gender"] = gender;
    data["reporter_name"] = _reporterName.text;
    data["details"] = _details.text;
    data["phone"] = _phone.text;
    data["abuser_name"] = _abusedName.text;
    data["location"] = _location.text;
    data["age"] = _age.text;
    data["for_whom"] = forWhom;
    await FirebaseFirestore.instance.collection("reports").doc(key).set(data);
    setState(() {
      _loading = false;
    });
    new GeneralUtils().showToast(context, "Report submitted successful.");
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
