import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../components/text_components.dart';
import 'tabs_btn_info.dart';

class TabItems extends StatefulWidget {
  const TabItems({super.key});

  @override
  State<TabItems> createState() => _TabItemsState();
}

class _TabItemsState extends State<TabItems> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 9.2),
            child: const TabBar(
              labelColor: Color(0xff85BB65),
              labelStyle: textstyle,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    'Require Care',
                  ),
                ),
                Tab(
                  child: Text(
                    'Recent',
                  ),
                ),
                Tab(
                  child: Text(
                    'New',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 85.w,
            height: 42.h,
            alignment: Alignment.centerLeft,
            child: const TabBarView(children: [
              TabsButtonInfo(),
              TabsButtonInfo(),
              TabsButtonInfo(),
            ]),
          )
        ],
      ),
    );
  }
}
