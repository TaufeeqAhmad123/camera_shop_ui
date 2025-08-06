import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Filterwidget extends StatefulWidget {
  const Filterwidget({super.key});

  @override
  State<Filterwidget> createState() => _FilterwidgetState();
}

class _FilterwidgetState extends State<Filterwidget> {
   int _selectedNavbarIndex = 0;
    final List<String> _navbarTitles = ["Mirrorless", "Modern", "Vintage"];
  @override
  Widget build(BuildContext context) {
   

    return Expanded(
      child: Container(
        height: 64.5.h,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(topRight: Radius.circular(30.sp)),
        ),
        child: Column(
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                  ),
                  color: Colors.grey[300],
                ),
                width: 127.8.w,
                child: ListView.builder(
                  itemCount: _navbarTitles.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (_,int index) =>Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedNavbarIndex = index;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.w, top: 3.h),

                              child: Text(
                                _navbarTitles[index],
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(230, 0, 0, 0),
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (_selectedNavbarIndex == index)
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            height: 0.8.h,
                            width: 22.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              shape: BoxShape.rectangle,
                              color: Colors.black,
                            ),
                          ),
                      ],
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
