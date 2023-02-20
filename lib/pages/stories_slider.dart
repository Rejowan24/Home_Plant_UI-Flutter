import 'dart:ui';

import 'package:app_ui/model/story_slider_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StoriesSlider extends StatelessWidget {
  const StoriesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final slidermargin = EdgeInsets.only(left: 9.w, top: 2.h);
    return Container(
      width: 100.w,
      height: 20.h,
      margin: slidermargin,
      child: ListView.builder(
          itemCount: storysliderinfo.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (storysliderinfo[index].title == 'Add Stories') {
              return Stack(
                alignment: Alignment.center,
                children: [
                  ClipRect(
                    child: Container(
                      width: 30.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/storyslider/${storysliderinfo[index].imageurl.toString()}"),
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 42,
                        ),
                        Text(
                          storysliderinfo[index].title.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              );
            } else {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 30.w,
                    height: 20.h,
                    margin: EdgeInsets.only(left: 4.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/storyslider/${storysliderinfo[index].imageurl.toString()}"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/profile/${storysliderinfo[index].profileimage.toString()}"),
                        ),
                        Text(
                          storysliderinfo[index].title.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}
