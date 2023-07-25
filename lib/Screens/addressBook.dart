import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/profileAddressSearch.dart';
import 'package:reeroute/common/loadingAddress.dart';
import 'package:reeroute/common/unloadingAddress.dart';
import '../util/colors.dart';

class AddressBook extends StatefulWidget {
  const AddressBook({Key? key}) : super(key: key);

  @override
  State<AddressBook> createState() => _AddressBookState();
}

class _AddressBookState extends State<AddressBook> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(Icons.arrow_back),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Address Book',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'rubik',
                          fontSize: 18,
                          color: ColorSelect.primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TabBar(
                    padding: EdgeInsets.only(right: 29),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        color: ColorSelect.orangeColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      insets: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                    ),
                    // indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: ColorSelect.orangeColor,
                    labelStyle: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                    unselectedLabelColor: Color(0xff777777),
                    unselectedLabelStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w400),
                    tabs: [
                      Tab(
                        text: 'Loading Address',
                      ),
                      Tab(
                        text: 'Unloading Address',
                      )
                    ]),
              ),
              Container(
                height: 100,
                child: TabBarView(
                  children: [LoadingAddress(), UnloadingAddress()],
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
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileAdressSearch()));
                      },
                      child: Text(
                        'Add new Address'.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'inter'),
                      ),
                    ),
                  ),
                ),
              )
              // Container(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black.withOpacity(0.25),
              //           blurRadius: 48,
              //           offset: Offset(0, 8),
              //         ),
              //       ],
              //     ),
              //     height: 54,
              //     width: MediaQuery.of(context).size.width *
              //         0.9, // Adjust the width value as needed
              //     margin: EdgeInsets.symmetric(vertical: 16),
              //     child: ElevatedButton(
              //       style: ButtonStyle(
              //           backgroundColor:
              //               MaterialStatePropertyAll(Color(0xffF79633)),
              //           shape: MaterialStatePropertyAll(
              //               RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(16)))),
              //       onPressed: () {
              //         // Navigator.push(
              //         //     context,
              //         //     MaterialPageRoute(
              //         //         builder: (context) =>
              //         //             UpdateEditProfile()));
              //       },
              //       child: Text(
              //         'Update'.tr,
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 22,
              //             fontFamily: 'inter'),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
