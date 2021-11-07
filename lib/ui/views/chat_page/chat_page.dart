import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simbi_health/data/models/chat.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                "Chat with Simbi",
                style: headingTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 42.h,
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                // shrinkWrap: true,
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: 12.h,
                        right: chat.isSender! ? 50.h : 0,
                        left: chat.isSender! ? 0 : 50.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: chat.isSender!
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('${chat.profileImage}'),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            decoration: BoxDecoration(
                              color: chat.isSender!
                                  ? Color.fromRGBO(14, 77, 164, 1)
                                  : Color.fromRGBO(236, 244, 255, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: chat.isSender!
                                      ? Radius.circular(10)
                                      : Radius.circular(0),
                                  bottomLeft: chat.isSender!
                                      ? Radius.circular(0)
                                      : Radius.circular(10)),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "${chat.message}",
                                  style: customTextStyle(
                                      chat.isSender!
                                          ? Colors.white
                                          : Color.fromRGBO(12, 55, 117, 1),
                                      12.sp,
                                      'helveticaNeueNormal',
                                      FontWeight.w400),
                                ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "${chat.time}",
                                style: customTextStyle(
                                    Color.fromRGBO(139, 139, 139, 1),
                                    7.sp,
                                    'helveticaNeueNormal',
                                    FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.h),
                    ),
                    filled: true,
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          if (controller.text.isNotEmpty) {
                            setState(() {
                              final chat = Chat(
                                  isSender: false,
                                  message: controller.text,
                                  profileImage: "assets/images/sender.png",
                                  time: "12:22 am");

                              chats.add(chat);
                              controller.clear();
                              print("Chats length: ${chats.length}");
                            });
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: AppColors.simbiPrimaryColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.send,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Type in your chat",
                    fillColor: Colors.white70),
              )),
          SizedBox(
            height: 17.h,
          )
        ],
      ),
    );
  }
}
