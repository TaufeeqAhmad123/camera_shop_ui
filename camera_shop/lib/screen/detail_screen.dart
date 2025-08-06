import 'package:camera_shop/Model/model.dart';
import 'package:camera_shop/const/extantion_sizedBox.dart';
import 'package:camera_shop/const/txt_style.dart';
import 'package:camera_shop/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 212, 212),

      body: Column(
        children: [
          topWidget(
            opacity: 0,
            iconbutton: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios, size: 22, color: Colors.white),
            ),
          ),
          Hero(
            tag: product.productImg,
            child:
                Image.asset(
                      product.productImg,
                      height: 30.h,
                      width: double.infinity,
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
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    )
                    .slideX(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
          ),
          Expanded(
            child: Stack(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.h),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                  child: ListView.builder(
                    itemCount: product.productDetailImgList.length,
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (_, index) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: SizedBox(
                            height: 13.h,
                            width: 23.w,
                            child:
                                Image.asset(
                                      product.productDetailImgList[index],
                                      fit: BoxFit.fitWidth,
                                    )
                                    .animate(
                                      autoPlay: true,
                                      delay: Duration(
                                        milliseconds: 100 * index,
                                      ),
                                    )
                                    .fadeIn(
                                      duration: const Duration(
                                        milliseconds: 500,
                                      ),
                                      curve: Curves.easeInOut,
                                    ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 20.h,
                  child: Padding(
                    padding: pagePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.productName, style: titleStyle(context)).animate(
                          autoPlay: true,
                          delay: const Duration(milliseconds: 100),
                        ).fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ).slideY(
                          duration: const Duration(milliseconds: 2000),
                          curve: Curves.easeInOut,
                        ),
                        1.vSpace,
                        Row(
                          children: List.generate(
                            5,
                            (index) =>
                                const Icon(Icons.star, color: Colors.amber),
                          ),
                        ).animate(
                          autoPlay: true,
                          delay: const Duration(milliseconds: 100),
                        ).fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ).slideY(
                          duration: const Duration(milliseconds: 2000),
                          curve: Curves.easeInOut,
                        ),
                        2.vSpace,
                        SizedBox(
                          width: 90.w,
                          child: Text(
                            product.productDescription,
                            style: subtitleStyle(
                              context,
                            ).copyWith(color: Colors.grey[600]),
                          ).animate(
                          autoPlay: true,
                          delay: const Duration(milliseconds: 100),
                        ).fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ).slideY(
                          duration: const Duration(milliseconds: 2000),
                          curve: Curves.easeInOut,
                        ),
                        ),
                        1.vSpace,
                        Text(
                          "\$${product.productPrice.toStringAsFixed(0)}",
                          style: titleStyle(context).copyWith(fontSize: 22.sp),
                        ).animate(
                          autoPlay: true,
                          delay: const Duration(milliseconds: 100),
                        ).fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ).slideY(
                          duration: const Duration(milliseconds: 2000),
                          curve: Curves.easeInOut,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: SizedBox(
        height: 12.h,
        child: Align(
          alignment: AlignmentGeometry.bottomRight,
          child: Container(
            width: 90.w,
            height: 12.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.sp)),
              color: Colors.black,
            ),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.sp),
                        bottomRight: Radius.circular(30.sp),
                      ),
                    ),
                    color: Colors.white12,
                    height: double.infinity,
                    child: Text(
                      'Add To Cart',
                      style: titleStyle(
                        context,
                      ).copyWith(color: Colors.white, fontSize: 17.sp),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    height: double.infinity,
                    onPressed: () {},
                    color: Colors.black,
                    child: Text(
                      'Buy Now',
                      style: titleStyle(
                        context,
                      ).copyWith(color: Colors.amber, fontSize: 17.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
