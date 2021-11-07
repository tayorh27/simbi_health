import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/widgets/reusable_widgets.dart';


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios), color: AppColors.blackColor,),
      ),

      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text("sAlert", style: headingTextStyle,)),
              ],
            ),

            SizedBox(height: 27.h,),

            Row(
              children: [
                Expanded(
                  child: RadioListTile<For>(
                    title: Text('Personal' , style: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)),
                    value: For.personal,
                    groupValue: _for,
                    activeColor: AppColors.simbiPrimaryColor,
                    onChanged: (For? value) {
                      setState(() {
                        _for = value;
                      });
                    },
                  ),
                ),
                Expanded(child: RadioListTile<For>(
                  title: Text('For Someone', style: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),),
                  value: For.forSomeone,
                  groupValue: _for,
                  activeColor: AppColors.simbiPrimaryColor,
                  onChanged: (For? value) {
                    setState(() {
                      _for = value;
                    });
                  },
                ),)
              ],
            ),

            SizedBox(height: 17.h,),

            Form(
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
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
                        labelText: "Reporter's name",
                        hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                        labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                      ),
                    ),

                    SizedBox(height: 21.h,),
                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.name,
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
                          hintText: 'useremail.com',
                          labelText: "Email",
                          hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                          labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                      ),
                    ),

                    SizedBox(height: 21.h,),
                    
                    Row(
                      children: [
                        Expanded(child: TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.phone,
                          maxLength: 11,
                          decoration: InputDecoration(
                            counterText: "",
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
                              hintText: '09095355159',
                              labelText: "Phone no.",
                              hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                              labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                          ),
                        ),),
                        SizedBox(width: 14.w,),
                        Expanded(child: TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
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
                              hintText: 'Robert Yelp',
                              labelText: "Name of abused",
                              hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                              labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                          ),
                        ),),
                      ],
                    ),

                    SizedBox(height: 21.h,),

                    TextFormField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add_location, color: AppColors.blackColor,),
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
                          // hintText: 'Robert Yelp',
                          labelText: "Location",
                          hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                          labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                      ),
                    ),

                    SizedBox(height: 25.h,),

                    TextFormField(
                      obscureText: false,
                      maxLines: 10,
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
                          hintText: 'Enter detail of event',
                          labelText: "Details",
                          hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                          labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                      ),
                    ),

                    SizedBox(height: 21.h,),

                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: Text('Female' , style: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 8.sp, 'helveticaNeueNormal', FontWeight.w400)),
                            value: Gender.female,
                            groupValue: _gender,
                            activeColor: AppColors.simbiPrimaryColor,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                        ),

                        Expanded(
                          child: RadioListTile<Gender>(
                            title: Text('Male' , style: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)),
                            value: Gender.male,
                            groupValue: _gender,
                            activeColor: AppColors.simbiPrimaryColor,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                        ),
                        
                        Expanded(child: TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.number,
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
                              hintText: '17',
                              labelText: "Age of the abused",
                              hintStyle: customTextStyle(Color.fromRGBO(204, 211, 221, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400),
                              labelStyle: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 13.sp, 'helveticaNeueNormal', FontWeight.w400)
                          ),
                        ))
                      ],
                    ),

                    SizedBox(height: 36.h,),

                    customElevatedButton(
                      text: "Submit",
                      textColor: AppColors.whiteColor,
                      onPress: (){

                      }
                    ),

                    SizedBox(height: 36.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Terms and Conditions", style: customTextStyle(AppColors.yellowColor, 9.sp, 'helveticaNeueNormal', FontWeight.w400) ),
                        SizedBox(width: 3.h,),
                        Text("apply.", style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 9.sp, 'helveticaNeueNormal', FontWeight.w400) ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
