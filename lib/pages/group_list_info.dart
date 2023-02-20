import 'package:app_ui/components/text_components.dart';
import 'package:app_ui/model/group_info.dart';
import 'package:app_ui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GroupList extends StatelessWidget {
  const GroupList({super.key});

  @override
  Widget build(BuildContext context) {
    List groupsImages = [
      'assets/images/profile/profile1.jpg',
      'assets/images/profile/profile2.jpg',
      'assets/images/profile/profile3.jpg',
    ];

    return ListView.builder(
        itemCount: grouplist.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 80.w,
            height: 10.h,
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: const Color(0xffE8EBE0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 15.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/storyslider/${grouplist[index].listimage.toString()}'),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        grouplist[index].listTitle.toString(),
                        style: textstyle,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < groupsImages.length; i++)
                            Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 13,
                                backgroundImage: AssetImage(groupsImages[i]),
                              ),
                            ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(grouplist[index].listSubtitle.toString())
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 8.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.add,
                  ),
                )
              ],
            ),
          );
        });
  }
}
