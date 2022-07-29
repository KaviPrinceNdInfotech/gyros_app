import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class RefundPolicy extends StatelessWidget {
  const RefundPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Refund Policy',
          style: TextStyle(
              color: AppColors.themecolors, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
              // _homePageController.toggle(index);
              //Get.to(() => WalkTracking());
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: AppColors.themecolors,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    """We have a 5 - days refund policy ,which means you have 5 days afetr receiving your item to request a relacement or return. For exchange/return you can contact us at kumar4@gmail.com.""",
                    style: GoogleFonts.raleway(
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Exchange and Refund',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
                    style: GoogleFonts.raleway(
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Exchange/Returns are only in the following unlikely cases;',
                    style: GoogleFonts.poppins(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Cancellation :',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                      ),
                      Text(
                        ' The product is damage or if you receive the wrong item.',
                        style: GoogleFonts.poppins(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Refund :',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    """To be eligible for an exchange/return, your item must be in the same condition that you received it , unused and in its original packaging. To complaate your exchange/return, the invoice must be provided at the time of return pickup. once used,products will be ineligible for exchange or return.""",
                    style: GoogleFonts.raleway(
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
