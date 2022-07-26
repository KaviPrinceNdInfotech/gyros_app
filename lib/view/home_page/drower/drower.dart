import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

import 'drower_page/all_products.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.7.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 55,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Image.asset(
                          'lib/assets/asset/guser_logo.png',
                          fit: BoxFit.fill,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: AppColors.themecolors,
              ),
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.local_mall,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Shop',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/AllProducts'
                  ? Colors.grey[300]
                  : Colors.transparent,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => AllProducts());
                Get.offNamed('/AllProducts');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.local_offer,
                color: Colors.black,
                size: 13.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Best Deal',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/ProfilePage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => ProfilePage());
                Get.offNamed('/ProfilePage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.card_giftcard_outlined,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Gift Boxes',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/MyHolidayPage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => MyHolidayPage());
                Get.offNamed('/MyHolidayPage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.history_edu_outlined,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Our Story',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/AssociatePage'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => AssociatePage());
                Get.offNamed('/AssociatePage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.account_box_outlined,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Blogs',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/Gallerys' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => Gallerys());
                Get.offNamed('/Gallerys');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.web,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Website',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/WebsitePage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => WebsitePage());
                Get.offNamed('/WebsitePage');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.track_changes_sharp,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Traceability',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/ContactUs' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => ContactUs());
                Get.offNamed('/ContactUs');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/ContactUs' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                //Get.to(() => ContactUs());
                Get.offNamed('/ContactUs');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.login,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Login',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/home' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.offNamed('/home');
              },
            ),
            ListTile(
              horizontalTitleGap: 1.h,
              leading: Icon(
                Icons.person_add_alt_1_rounded,
                color: Colors.black,
                size: 12.sp,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 10.sp,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              title: Text(
                'Create Account',
                style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/home' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.offNamed('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
