import 'package:camera_shop/Model/model.dart';
import 'package:camera_shop/const/extantion_sizedBox.dart';
import 'package:camera_shop/const/txt_style.dart';
import 'package:camera_shop/widget/filterWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Productwidget extends StatefulWidget {
  const Productwidget({super.key});

  @override
  State<Productwidget> createState() => _ProductwidgetState();
}

class _ProductwidgetState extends State<Productwidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final product = ProductModel.productList[_currentIndex];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.productName,
                    style: headingStyle(context).copyWith(fontSize: 22.sp),
                  ),
                  Text(
                    '\$${product.productPrice.toStringAsFixed(0)}',
                    style: titleStyle(context).copyWith(fontSize: 20.sp),
                  ),
                ],
              ),
              1.vSpace,
              Text(
                _currentIndex == 0
                    ? "The first 8 cm f2 8 taking lens in Rolleiflex line."
                    : product.productDescription,
                style: subtitleStyle(context).copyWith(color: Colors.grey[600]),
              ),
            
             
            ],
          ),
        ),
        SizedBox(height: 2.6.h,),
         Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Filterwidget(),
                  SizedBox(width: 5.w),
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 58.h,
                      width: 70.w,
                      child: CarouselSlider.builder(
                        itemCount: ProductModel.productList.length,
                        options: CarouselOptions(
                          scrollDirection: Axis.vertical,
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOut,
                          enlargeCenterPage: true,
                          viewportFraction: 0.58,
                          onPageChanged: (index, _) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),

                        itemBuilder: (context, index, realIndex) {
                          double opacity = 0.2;
                          if (index == _currentIndex) {
                            opacity = 1.0;
                          } else if (index == _currentIndex - 2) {
                            opacity = 0.3;
                          } else {
                            opacity = 0;
                          }
                          return AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            opacity: opacity,
                            child: Image.asset(
                               product.productImg,
                            height: index == 1 ? 45.h : 70.h,
                            width: double.infinity,
                            fit: index == 0 ? BoxFit.cover : BoxFit.fitWidth,

                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
