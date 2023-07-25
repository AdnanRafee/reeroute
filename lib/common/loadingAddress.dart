import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingAddress extends StatefulWidget {
  const LoadingAddress({Key? key}) : super(key: key);

  @override
  State<LoadingAddress> createState() => _LoadingAddressState();
}

class _LoadingAddressState extends State<LoadingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26, 45, 26, 0),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.circle,
                    size: 8,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
                Flexible(
                  child: Text(
                      softWrap: true,
                      'B-606, Bhoomi Heights, Sector-6, Kharghar Navi Mumbai 600706, Maharashtra'),
                )
              ],
            ),
            // Expanded(
            //   child: Container(
            //     alignment: Alignment.bottomCenter,
            //     child: Container(
            //       decoration: BoxDecoration(
            //           // boxShadow: [
            //           //   BoxShadow(
            //           //     color: Colors.black.withOpacity(0.25),
            //           //     blurRadius: 48,
            //           //     offset: Offset(0, 10),
            //           //   ),
            //           // ],
            //           ),
            //       height: 54,
            //       width: MediaQuery.of(context).size.width *
            //           0.9, // Adjust the width value as needed
            //       margin: EdgeInsets.symmetric(vertical: 10),
            //       child: ElevatedButton(
            //         style: ButtonStyle(
            //             backgroundColor:
            //                 MaterialStatePropertyAll(Color(0xffF79633)),
            //             shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(16)))),
            //         onPressed: () {}
            //         // Navigator.push(
            //         //     context,
            //         //     MaterialPageRoute(
            //         //         builder: (context) =>
            //         //             UpdateEditProfile()));
            //
            //         ,
            //         child: Text(
            //           'Add new Address'.tr,
            //           style: TextStyle(
            //               color: Colors.white, fontSize: 22, fontFamily: 'inter'),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
