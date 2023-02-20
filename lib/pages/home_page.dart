import 'package:app_ui/pages/all_post_page.dart';
import 'package:app_ui/pages/bottom_navbar.dart';
import 'package:app_ui/pages/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../components/icon_components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var padding = const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const BottonNavBar(),
      backgroundColor: const Color(0xFFF8F8F7),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              //profile image part.
              Container(
                padding: padding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/icon1.png'),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/profile/profile.jpg')),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 2.0),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: padding,
                child: Column(
                  children: [
                    const Text(
                      'Welcome to your greenhouse',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xff2B5D34),
                        fontFamily: 'MontserratAlternates',
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Stack(
                      children: [
                        const CupertinoSearchTextField(
                          backgroundColor: Color(0xffE8EBE0),
                          padding: EdgeInsets.all(18.0),
                          placeholder: 'Search point',
                          itemColor: Color(0xffE8EBE0),
                          placeholderStyle: TextStyle(color: Color(0xff85BB65)),
                        ),
                        Positioned(
                          width: 55.0,
                          height: 54.0,
                          right: 0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: style,
                            child: const Icon(CupertinoIcons.search),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const TabItems(),
              const AllPost(),
            ],
          ),
        ),
      ),
    );
  }
}
