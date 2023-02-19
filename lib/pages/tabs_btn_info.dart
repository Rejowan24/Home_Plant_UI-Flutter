import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../components/icon_components.dart';
import '../components/text_components.dart';
import '../model/tab_list.dart';

class TabsButtonInfo extends StatelessWidget {
  const TabsButtonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: listinfo.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60.w,
                  height: 32.h,
                  margin: const EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(listinfo[index].imageurl.toString()),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listinfo[index].title.toString(),
                          style: textstyle,
                        ),
                        Text(listinfo[index].subtitle.toString()),
                      ],
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: style,
                      child: Text(listinfo[index].buttoninfo.toString()),
                    )
                  ],
                )
              ],
            );
          }),
    );
  }
}
