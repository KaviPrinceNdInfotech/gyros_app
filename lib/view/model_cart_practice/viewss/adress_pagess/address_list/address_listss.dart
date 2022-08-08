import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class AddressList extends StatelessWidget {
  const AddressList({Key? key}) : super(key: key);

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
          'Address List',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.themecolors,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1563898655817-170c8a11efdf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                fit: BoxFit.fill)),
        child: Expanded(
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  child: Container(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
