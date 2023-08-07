import 'package:flutter/material.dart';
import 'package:reeroute/Screens/Onboarding%20&%20KYC/aadhaarBackSide.dart';
import 'package:reeroute/common/appBarReeroute.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AadhaarFrontSide extends StatefulWidget {
  const AadhaarFrontSide({Key? key}) : super(key: key);

  @override
  State<AadhaarFrontSide> createState() => _AadhaarFrontSideState();
}

class _AadhaarFrontSideState extends State<AadhaarFrontSide> {
  bool upload = true;
  File? _image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this._image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick an image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 105,
                right: 106,
                top: 63,
                bottom: 36,
              ),
              child: _image != null
                  ? Image.file(
                      _image!,
                      height: 126,
                      width: 202,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/AadhaarFront.png',
                      width: 228,
                    ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upload front side of your AADHAR".tr,
                  style: TextStyle(
                    fontFamily: 'rubik',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.475,
                    color: Color(0xff2a4f6d),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing\nand typesetting industry.",
                  style: TextStyle(
                    fontFamily: 'krub',
                    fontSize: 12,
                    letterSpacing: 0.475,
                    color: Color(0xff2a4f6d),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: !upload
          ? Container(
              height: 98,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 28, right: 28, top: 22, bottom: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(
                            () {
                              upload = !upload;
                            },
                          );
                        },
                        child: Container(
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color(0xfff79633),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Use Another".tr,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfff79633),
                                letterSpacing: 0.475,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AadhaarBackSide(),
                            ),
                          );
                        },
                        child: Container(
                          height: 54,
                          decoration: BoxDecoration(
                            color: Color(0xfff79633),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Continue".tr,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                letterSpacing: 0.475,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 28, right: 28, top: 28, bottom: 32),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        pickImage(ImageSource.gallery);
                        setState(
                          () {
                            upload = !upload;
                          },
                        );
                      },
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color(0xfff79633),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/upload.png', width: 24),
                            const SizedBox(width: 7),
                            Text(
                              "Upload from gallery".tr,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                color: Color(0xfff79633),
                                letterSpacing: 0.475,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: () {
                        pickImage(ImageSource.camera);
                        setState(
                          () {
                            upload = !upload;
                          },
                        );
                      },
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                          color: Color(0xfff79633),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/camera.png', width: 24),
                            const SizedBox(width: 10),
                            Text(
                              "Take a picture".tr,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                color: Colors.white,
                                letterSpacing: 0.475,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
