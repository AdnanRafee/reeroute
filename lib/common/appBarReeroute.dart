import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarReeroute extends StatelessWidget implements PreferredSizeWidget {
  const AppBarReeroute({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: SvgPicture.asset('assets/images/headerIcon.svg'),
        ),
      ),
    );
  }
}
