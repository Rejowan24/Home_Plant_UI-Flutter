import 'dart:ui';

import 'package:app_ui/components/button_components.dart';
import 'package:app_ui/components/icon_components.dart';
import 'package:app_ui/components/text_components.dart';
import 'package:app_ui/pages/bottom_navbar.dart';
import 'package:app_ui/pages/stories_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import 'group_list_info.dart';
import 'market_slider.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const BottonNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            width: 100.w,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffD4B6AF), Color(0xffF8F8F7)],
                stops: [0, 0.2],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 4.h, left: 8.w, right: 8.w, bottom: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Community",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: textcolor),
                      ),
                      Icon(
                        CupertinoIcons.search,
                        color: textcolor,
                        size: 30.0,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        style: btnstyle,
                        onPressed: (() {}),
                        icon: const Icon(CupertinoIcons.person_2_fill,
                            color: iconcolor),
                        label: const Text(
                          '2360',
                          style: TextStyle(
                              color: textcolor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: btnstyle,
                        onPressed: (() {}),
                        icon: const Icon(CupertinoIcons.person_3_fill,
                            color: iconcolor),
                        label: const Text(
                          '244',
                          style: TextStyle(
                              color: textcolor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: btnstyle,
                        onPressed: (() {}),
                        icon: const Icon(CupertinoIcons.cart_fill,
                            color: iconcolor),
                        label: const Text(
                          '982',
                          style: TextStyle(
                              color: textcolor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: btnstyle,
                        onPressed: (() {}),
                        icon: const Icon(CupertinoIcons.star_fill,
                            color: iconcolor),
                        label: const Text(
                          '763',
                          style: TextStyle(
                              color: textcolor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 9.w, top: 3.h),
                  child: const Text(
                    'Stories',
                    style: textstyle,
                  ),
                ),
                const StoriesSlider(),
                Container(
                  padding: EdgeInsets.only(left: 9.w, top: 3.h),
                  child: const Text(
                    'Market',
                    style: textstyle,
                  ),
                ),
                const MarketSliderPage(),
                Container(
                  padding: EdgeInsets.only(left: 9.w, top: 3.h),
                  child: const Text(
                    'Groups',
                    style: textstyle,
                  ),
                ),
                const GroupList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
