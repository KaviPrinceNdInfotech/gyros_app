import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/rozar_pay_controller/rozar_pay_controller.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/model_cart_practice/controllers/cart_controllersss.dart';
import 'package:gyros_app/view/model_cart_practice/viewss/adress_pagess/add_address_order.dart';
import 'package:neopop/utils/color_utils.dart';
import 'package:neopop/utils/constants.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:sizer/sizer.dart';

class TotalPrice extends StatelessWidget {
  final CartController controller = Get.find();
  final RozarPayController _rozarPayController = Get.find();
  TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColors.themecolors,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Order Placed',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.themecolors,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => SizedBox(
          height: 80.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  height: size.height * 0.30,
                  width: 90.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping Address :',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => AddAddress());
                            },
                            child: Material(
                              elevation: 5,
                              child: Container(
                                height: size.height * 0.04,
                                width: size.width * 0.20,
                                decoration: BoxDecoration(
                                  gradient: MyTheme.gradient3,
                                ),
                                child: Center(
                                  child: Text(
                                    'Add Address',
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'State:',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'City: ',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'Street: ',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'Area: ',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'Nearby: ',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'Building No: ',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'Pin: ',
                                style: TextStyle(
                                  color: AppColors.themecolors,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delhi',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'New Delhi',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'New Ashok Nagar',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 0.9.h,
                              ),
                              Text(
                                'New Ashok nagar Market',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 0.9.h,
                              ),
                              Text(
                                'Noida Sector 15 Metro station',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 0.9.h,
                              ),
                              Text(
                                'B6',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 0.9.h,
                              ),
                              Text(
                                '110096',
                                style: TextStyle(
                                  color: AppColors.backgroundColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 0.7.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price:',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Gst Text:',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Discount:',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Delivery Charge:',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '₹ ${controller.total}',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '₹ 30',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '₹ 90',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '₹ 60',
                                style: GoogleFonts.alegreyaSc(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Cost',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₹ ${controller.total}',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.w, vertical: 0.5.h),
                        child: NeoPopButton(
                          topShadowColor: Colors.green,
                          leftShadowColor: Colors.green,
                          color: Colors.black,
                          bottomShadowColor:
                              ColorUtils.getVerticalShadow(Colors.green)
                                  .toColor(),
                          rightShadowColor:
                              ColorUtils.getHorizontalShadow(Colors.green)
                                  .toColor(),
                          animationDuration: const Duration(milliseconds: 200),
                          depth: kButtonDepth,
                          onTapUp: () {
                            _rozarPayController.openCheckout();
                            // Get.to(() => TotalPrice());
                          },
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("PLACE ORDER",
                                    style: GoogleFonts.poppins(
                                      color: MyTheme.ThemeColors,
                                      fontSize: 13,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
