import 'package:app_ui/components/button_components.dart';
import 'package:app_ui/components/text_components.dart';
import 'package:app_ui/model/market_slider_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MarketSliderPage extends StatelessWidget {
  const MarketSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 20.h,
      margin: EdgeInsets.only(left: 9.w, top: 2.h),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: marketsliderinfo.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 65.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/market/${marketsliderinfo[index].contentImageurl.toString()}'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 6.0,
                      left: 4.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            marketsliderinfo[index].title.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/profile/${marketsliderinfo[index].profileImage.toString()}'),
                              ),
                              Text(
                                marketsliderinfo[index].name.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 25,
                      child: Container(
                        width: 50.0,
                        height: 35.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff85BB65),
                        ),
                        child: Text(
                          marketsliderinfo[index].price.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  children: [
                    Container(
                      width: 20.w,
                      height: 9.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/market/${marketsliderinfo[index].subImageurl.toString()}'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      width: 20.w,
                      height: 9.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/market/${marketsliderinfo[index].subImagetwourl.toString()}'),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 3.w,
                )
              ],
            );
          }),
    );
  }
}
