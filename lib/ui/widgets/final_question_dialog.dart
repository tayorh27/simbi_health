import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/featured_projects.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';

class FinalQuestionDialog extends StatefulWidget {
  final Question? question;
  FinalQuestionDialog(this.question);
  @override
  _FinalQuestionDialogState createState() => _FinalQuestionDialogState();
}

class _FinalQuestionDialogState extends State<FinalQuestionDialog> {
  bool? options;
  bool showAnswer = false;
  String selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    final question = widget.question;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 21.h,
            ),
            showAnswer && selectedAnswer == question!.correctAnswer
                ? Image.asset('assets/images/correct_answer.png')
                : showAnswer && selectedAnswer != question!.correctAnswer
                ? Image.asset('assets/images/wrong_answer.png')
                : Image.asset('assets/images/question.png'),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Question",
              style: customTextStyle(Color.fromRGBO(0, 0, 0, 1), 18,
                  'helveticaNeueNormal', FontWeight.w700),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              question!.question!,
              style: TextStyle(
                  fontSize: 15.h,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(99, 111, 130, 1)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              children: [
                ...question.options!.map((option) => RadioListTile(
                  value: option,
                  groupValue: selectedAnswer,
                  activeColor: showAnswer &&
                      selectedAnswer != question.correctAnswer
                      ? AppColors.redColor
                      : AppColors.simbiPrimaryColor,
                  onChanged: (dynamic answer) {
                    if (selectedAnswer == "" && !showAnswer) {
                      setState(() {
                        showAnswer = true;
                        selectedAnswer = answer;
                        print("Answer: $answer");
                      });
                    }
                  },
                  selected: selectedAnswer == option,
                  title: Text(
                    option,
                    style: TextStyle(fontSize: 13),
                  ),
                )
                  // items(option)
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            showAnswer
                ? Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 137.w,
                    height: 48.h,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (selectedAnswer == question.correctAnswer) {
                            options = true;
                            Navigator.pop(context, options);
                          } else {
                            setState(() {
                              showAnswer = false;
                              selectedAnswer = "";
                            });
                            // options = false;
                          }
                        });
                      },
                      child: Text(
                        selectedAnswer == question.correctAnswer!
                            ? 'Submit'
                            : "Try again",
                        style: customTextStyle(
                            AppColors.whiteColor,
                            13.sp,
                            'helveticaNeueNormal',
                            FontWeight.w400),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(1.0),
                        overlayColor: MaterialStateProperty.all<Color>(
                            AppColors.simbiPrimaryColor),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5.r))),
                        // foregroundColor:
                        // MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            selectedAnswer == question.correctAnswer!
                                ? AppColors.simbiPrimaryColor
                                : AppColors.yellowColor),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 0, 0, 1)),
                        // padding: MaterialStateProperty.all(
                        //     EdgeInsets.symmetric(horizontal: 50, vertical: 0)),
                      ),
                    ),
                  ),
                ],
              ),
            )
                : Container(),
            SizedBox(
              height: 14.h,
            )
          ],
        ),
      ),
    );
  }

  Widget items(String benefit) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 26, right: 26),
      child: Row(
        children: [
          Container(
            height: 8.h,
            width: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.greyColor),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
              child: InkWell(
                  onTap: () {
                    setState(() {
                      showAnswer = true;
                    });
                  },
                  child: Text(
                    benefit,
                    style: customTextStyle(Color.fromRGBO(99, 111, 130, 1),
                        14.sp, 'helveticaNeueNormal', FontWeight.w400),
                  )))
        ],
      ),
    );
  }
}
