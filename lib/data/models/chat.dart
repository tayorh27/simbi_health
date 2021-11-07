class Chat{
  final String? message;
  final String? profileImage;
  final bool? isSender;
  final String? time;


  const Chat({this.message, this.profileImage, this.isSender, this.time});
}

List<Chat> chats = [
  Chat(
    message: "Hello there! I’m Simbi you can ask me any question that’s bothering you",
    profileImage: "assets/images/sender.png",
    isSender: true,
    time: "11:42 am"
  ),
  Chat(
    message: "Let’s get started",
    profileImage: "assets/images/sender.png",
    isSender: true,
      time: "11:42 am"
  ),
  Chat(
    message: "How can I get take care of my sexual health?",
    profileImage: "assets/images/receiver.png",
    isSender: false,
      time: "12:42 am"
  ),
  Chat(
    message: "Take care of your sexual health by praying and bathing with dettol soap. Take care of your sexual health by praying and bathing with dettol soap.Take care of your sexual health by praying.",
    profileImage: "assets/images/sender.png",
    isSender: true,
      time: "13:42 am"
  ),
];