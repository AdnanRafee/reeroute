import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/util/colors.dart';

class EditLanguage extends StatefulWidget {
  const EditLanguage({Key? key}) : super(key: key);

  @override
  State<EditLanguage> createState() => _EditLanguageState();
}

class _EditLanguageState extends State<EditLanguage> {
  int selectedLanguageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Edit Language",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: selectedLanguageIndex == 0
                ? Text('English',
                    style: TextStyle(
                        color: ColorSelect.secondaryGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w500))
                : null,
            subtitle: Text('English (India)',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorSelect.primaryColor,
                  fontSize: 12,
                )),
            trailing: selectedLanguageIndex == 0
                ? Icon(Icons.check, color: ColorSelect.secondaryGreen, size: 24)
                : null,
            onTap: () {
              setState(() {
                selectedLanguageIndex = 0;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Divider(
            color: Color(0x26000000),
            thickness: 1,
            height: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: selectedLanguageIndex == 1
                ? Text('Hindi',
                    style: TextStyle(
                        color: ColorSelect.secondaryGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w500))
                : null,
            subtitle: Text('Hindi (India)',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorSelect.primaryColor,
                  fontSize: 12,
                )),
            trailing: selectedLanguageIndex == 1
                ? Icon(Icons.check, color: ColorSelect.secondaryGreen, size: 24)
                : null,
            onTap: () {
              setState(() {
                selectedLanguageIndex = 1;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Divider(
            color: Color(0x26000000),
            thickness: 1,
            height: 3,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 48,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              height: 54,
              width: MediaQuery.of(context).size.width *
                  0.9, // Adjust the width value as needed
              margin: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffF79633)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)))),
                onPressed: () {
                  if (selectedLanguageIndex == 1) {
                    var locale = Locale('hi', 'IN');
                    Get.updateLocale(locale);
                  } else if (selectedLanguageIndex == 0) {
                    selectedLanguageIndex == 1;
                    var locale = Locale('en', 'US');
                    Get.updateLocale(locale);
                  }
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             UpdateEditProfile()));
                },
                child: Text(
                  'Update'.tr,
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontFamily: 'inter'),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
