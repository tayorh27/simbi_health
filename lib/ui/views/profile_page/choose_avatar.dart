// ignore_for_file: must_be_immutable
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:page_view_indicators/arrow_page_indicator.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:simbi_health/ui/shared/styles.dart';
import 'package:simbi_health/ui/views/home_page/home_page.dart';
import 'package:simbi_health/ui/views/nav_screen/nav_screen.dart';
import 'package:simbi_health/utils/general.dart';
import 'package:simbi_health/utils/storage.dart';
import 'package:path_provider/path_provider.dart';

import '../../../constants.dart';

class ChooseAvatar extends StatefulWidget {
  const ChooseAvatar({Key? key}) : super(key: key);

  @override
  State<ChooseAvatar> createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  PageController controller = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  StorageSystem ss = new StorageSystem();
  bool _loading = false;

  List images = [
   Image.asset( "assets/icons/img1.png"),
    Image.asset("assets/icons/img2.png"),
   Image.asset( "assets/icons/img3.png"),
    Image.asset("assets/icons/img4.png"),
    Image.asset("assets/icons/img5.png"),
    Image.asset("assets/icons/img6.png"),
   Image.asset( "assets/icons/img7.png"),
    Image.asset("assets/icons/img8.png"),
    Image.asset("assets/icons/img5.png"),

  ];

  List<String> imgs = [
    "assets/icons/img1.png",
    "assets/icons/img2.png",
     "assets/icons/img3.png",
    "assets/icons/img4.png",
    "assets/icons/img5.png",
    "assets/icons/img6.png",
     "assets/icons/img7.png",
    "assets/icons/img8.png",
    "assets/icons/img5.png",
  ];

  int index = 1;

  Map<String, dynamic>? usr = Map();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new GeneralUtils().getUserData().then((value) {
      setState(() {
        usr = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: _loading,
        opacity: 0.6,
        progressIndicator: CircularProgressIndicator(),
    color: Colors.black,
    child:SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    "Choose Avatar",
                    style:  customTextStyle(AppColors.deepBlueColor, 28.sp,
                  "helveticaNeueNormal", FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 330,
                child: ArrowPageIndicator(
                  pageController: controller,
                  isInside: true,
                  leftIcon: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () {
                        setState(() {
                          controller.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        });
                      }),
                  rightIcon: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                      onPressed: () {
                        setState(() {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        });
                      }),
                  currentPageNotifier: _currentPageNotifier,
                  itemCount: 1,
                  child: PageView.builder(
                    controller: controller,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: GridView.builder(
                          padding: const EdgeInsets.all(15),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                savePicture(imgs[index]);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: images[index],
                              ),
                            );
                          },
                          itemCount: 9,
                        ),
                      );
                    },
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Container(height: 2, width: 50, color: AppColors.simbiPrimaryColor),
                    // const SizedBox(width: 30),
                    // Container(height: 2, width: 50, color: AppColors.simbiPrimaryColor),
                    // const SizedBox(width: 30),
                    // Container(height: 2, width: 50, color: AppColors.simbiPrimaryColor),
                  ],
                ),
              ),
              Container(),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  "or upload your own image",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline6!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: AppColors.deepBlueColor,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              InkWell(
                onTap: onImageSelectionPressed,
                child: Center(
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        DottedBorder(
                          borderType: BorderType.Circle,
                          color: Colors.green,
                          strokeWidth: 2,
                          dashPattern: const [6, 5, 6, 5],
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 70,
                            alignment: Alignment.center,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[100],
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "Upload \n image",
                              style: TextStyle(
                                color: Colors.green[600],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.camera_alt,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              // Container(
              //   height: 50,
              //   margin: const EdgeInsets.symmetric(horizontal: 20),
              //   width: double.infinity,
              //   color: Colors.green,
              //   alignment: Alignment.center,
              //   child: const Text("Change Avatar",
              //       style: TextStyle(color: Colors.white)),
              // ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      ));
  }

  onImageSelectionPressed() async {
    XFile? result = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (result != null) {
      File file = File(result.path);
      cropImageFileAndCompress(file);
    }
  }

  Future<void> cropImageFileAndCompress(File file) async {
    File? croppedFile = await ImageCropper.cropImage(
        sourcePath: file.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          // CropAspectRatioPreset.ratio3x2,
          // CropAspectRatioPreset.original,
          // CropAspectRatioPreset.ratio4x3,
          // CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: AppColors.simbiPrimaryColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        )
    );
    if(croppedFile == null) {
      return;
    }
    //compress image
    setState(() {
      _loading = true;
    });
    File? croppedFileResult = await compressAndGetFile(croppedFile);
    String url = await uploadFileToStorage(croppedFileResult);
    savePicture(url);
  }

  Future<File?> compressAndGetFile(File? file) async {
    String key = FirebaseDatabase.instance.reference().push().key;
    File tempFile =
    new File('${(await getTemporaryDirectory()).path}/$key.jpeg');
    var result = await FlutterImageCompress.compressAndGetFile(
      file!.absolute.path,
      tempFile.path,
      quality: 70,
    );
    return result;
  }

  Future<String> uploadFileToStorage(File? _file) async {
    String key = FirebaseDatabase.instance.reference().push().key;
    String fileExt = _file!.path.substring(_file.path.lastIndexOf(".") + 1);
    // print(fileExt);
    final Reference ref = FirebaseStorage.instance
        .ref()
        .child('user-profiles')
        .child('$key.$fileExt');
    final UploadTask uploadTask = ref.putFile(_file);
    await uploadTask.whenComplete(() {});
    TaskSnapshot storageTaskSnapshot = uploadTask.snapshot;
    return await storageTaskSnapshot.ref.getDownloadURL();
  }

  Future<void> savePicture(String image) async {
    setState(() {
      _loading = true;
    });
    Map<String, dynamic> newUserData = new Map();
    newUserData['picture'] = image;
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .update(newUserData)
        .then((v) async {
      Map<String, dynamic> userData = new Map();
      userData['uid'] = usr!["uid"];
      userData['email'] = usr!["email"];
      userData['firstname'] = usr!["firstname"];
      userData['lastname'] = usr!["lastname"];
      userData['picture'] = image;
      userData['username'] = usr!["username"];
      userData['number'] = usr!["number"];

      await ss.setPrefItem('user', jsonEncode(userData), isStoreOnline: false);

      // pd.dismissDialog();
      setState(() {
        _loading = false;
      });
      new GeneralUtils().showToast(context, "Profile avatar changed successfully.");
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
