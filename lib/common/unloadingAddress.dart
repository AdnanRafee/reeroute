import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnloadingAddress extends StatefulWidget {
  const UnloadingAddress({Key? key}) : super(key: key);

  @override
  State<UnloadingAddress> createState() => _UnloadingAddressState();
}

class _UnloadingAddressState extends State<UnloadingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                    'Plot No. 98, Sector-3, Airoli, Opp Khandoba Temple Sri Sadguru Vanamrao Pai Marg, Navi Mumbai, Maharashtra 400708'),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
