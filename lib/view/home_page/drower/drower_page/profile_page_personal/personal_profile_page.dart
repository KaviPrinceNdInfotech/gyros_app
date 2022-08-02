import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:sizer/sizer.dart';

import 'edit_profile/edit_profiles.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Personal Detail',
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Container(
              height: 15.h,
              width: 30.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    image: AssetImage('lib/assets/asset/guser_logo.png'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 4.5.h,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 15.sp,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      'Vineet Mishra',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 4.5.h,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      size: 15.sp,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'vineeet@gmail.com',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 4.5.h,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 15.sp,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '+91 8987899000',
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 10.5.h,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'New Ashok Nagar',
                      style: GoogleFonts.fanwoodText(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      'Delhi',
                      style: GoogleFonts.fanwoodText(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      'India 110096',
                      style: GoogleFonts.fanwoodText(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            InkWell(
              onTap: () {
                Get.to(() => EditProfiless());
              },
              child: Container(
                height: 4.5.h,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyTheme.loginbuttonColor
                    //gradient: MyTheme.gradient3,
                    ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Center(
                      child: Text(
                        'EDIT PROFILE',
                        style: GoogleFonts.fanwoodText(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
