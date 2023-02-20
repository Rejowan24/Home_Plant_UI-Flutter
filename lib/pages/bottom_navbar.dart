import 'package:app_ui/pages/community_page.dart';
import 'package:app_ui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  final iconcolor = const Color(0xff2B5D34);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      width: 90.w,
      height: 8.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 5.0)
        ],
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context, const HomePage());
            },
            child: Icon(
              CupertinoIcons.home,
              color: iconcolor,
              size: 28,
            ),
          ),
          Icon(
            Icons.message,
            color: iconcolor,
            size: 28,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CommunityPage(),
                ),
              );
            },
            child: Icon(
              CupertinoIcons.person_2,
              color: iconcolor,
              size: 28,
            ),
          ),
          Icon(
            Icons.bookmark,
            color: iconcolor,
            size: 28,
          ),
        ],
      ),
    );
  }
}
