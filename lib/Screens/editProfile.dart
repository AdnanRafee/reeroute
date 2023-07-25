import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/updateOtp.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late String valueChoose;
  List<String> cities = ['Mumbai'.tr, 'Chennai'.tr, 'Pune'.tr];

  String? dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 32, top: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.475,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x26000000),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          showCursor: false,
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.475,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff2a4f6d),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 38),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.475,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x26000000),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          showCursor: false,
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.475,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff2a4f6d),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 37),
                    Text(
                      'Current City*',
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.475,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(20, 0.4, 10, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffE6E6E6))),
                        child: SizedBox(
                          width: double.infinity,
                          height: 51,
                          child: DropdownButton(
                            focusColor: Colors.transparent,
                            underline: SizedBox.shrink(),
                            value: dropdownvalue,
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(10),
                            hint: Text(
                              'Select your current city'.tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                            ),
                            // Down Arrow Icon
                            icon: Icon(Icons.keyboard_arrow_down),
                            // Array list of items
                            items: cities.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        )),
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
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UpdateEditProfile()));
                            },
                            child: Text(
                              'Send OTP'.tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'inter'),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: ContinueBtn(
      //   text: 'Update',
      //   onTap: () {
      //     // Navigator.push(
      //     //   context,
      //     //   MaterialPageRoute(
      //     //     builder: (context) => ProfileScreen(),
      //     //   ),
      //     // );
      //   },
      // ),
    );
  }
}
