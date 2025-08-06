import 'package:camera_shop/const/color.dart';
import 'package:camera_shop/const/extantion_sizedBox.dart';
import 'package:camera_shop/const/image.dart';
import 'package:camera_shop/const/txt_style.dart';
import 'package:camera_shop/widget/productWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [topWidget(), infoWidget(), Productwidget()]),
    );
  }
}

class infoWidget extends StatelessWidget {
  const infoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          4.vSpace,
          Text(
            'Collection & History of',
            style: subtitleStyle(
              context,
            ).copyWith(fontWeight: FontWeight.w400, fontSize: 18.sp),
          ),
          Text(
            'Vintage Camera\'s',
            style: subtitleStyle(
              context,
            ).copyWith(fontWeight: FontWeight.w400, fontSize: 22.sp),
          ),
        ],
      ),
    );
  }
}

class topWidget extends StatelessWidget {
  final Widget? iconbutton;
  final double? opacity;

  const topWidget({super.key, this.iconbutton, this.opacity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 3.h),
          height: 13.h,
          width: 30.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30.sp),
            ),
            color: kBgClr,
          ),
          child: Center(
            child: SizedBox(
              height: 5.h,
              width: 8.w,

              child:
                  iconbutton ??
                  SvgPicture.asset(
                        AppIcon.filter,
                        color: Colors.white,
                        fit: BoxFit.cover,
                      )
                      .animate(
                        autoPlay: true,
                        delay: const Duration(milliseconds: 100),
                      )
                      .fadeIn(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      )
                      .scale(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut,
                      ),
            ),
          ),
        ),
        Spacer(),
        Opacity(
          opacity: opacity ?? 1,
          child: Padding(
            padding: EdgeInsets.only(top: 4.h, right: 3.w),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppIcon.search,
                  color: Colors.black,
                  height: 3.h,
                  width: 3.h,
                ),
                10.hSpace,
                SvgPicture.asset(
                  AppIcon.cart,
                  color: Colors.black,
                  height: 3.h,
                  width: 3.h,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
