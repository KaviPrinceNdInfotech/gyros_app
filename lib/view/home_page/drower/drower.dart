import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/botttom_nav_bar/whats_app_tracking_page.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/gift_box.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/our_story/our_stories.dart';
import 'package:gyros_app/view/login_page/login_main_page/login_main_pages.dart';
import 'package:gyros_app/view/signup/signup_page.dart';
import 'package:sizer/sizer.dart';

import 'drower_page/all_products.dart';
import 'drower_page/blogs/my_blogs.dart';
import 'drower_page/profile_page_personal/personal_profile_page.dart';
import 'drower_page/trackingss/tracking.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavController _navController = Get.put(NavController(), permanent: true);
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
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
                  // Get.currentRoute == '/NavBar'
                  //     ? Colors.grey[300]
                  //     :
                  Colors.transparent,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                _navController.tabindex(3);
                Get.to(() => NavBar());
                //Get.to(() => BestDeal());
                Get.offNamed('/NavBar');
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
              tileColor:
                  Get.currentRoute == '/GiftBox' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => GiftBox());
                Get.offNamed('/GiftBox');
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
              tileColor:
                  Get.currentRoute == '/OurStory' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => OurStory());
                Get.offNamed('/OurStory');
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
                  Get.currentRoute == '/Blogss' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                //Get.back();
                Get.to(() => Blogss());
                Get.offNamed('/Blogss');
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
              tileColor: Get.currentRoute == '/WhatsAppTrackOrder'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => WhatsAppTrackOrder());
                Get.offNamed('/WhatsAppTrackOrder');
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
                  Get.currentRoute == '/Tracking' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => Tracking());
                Get.offNamed('/Tracking');
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
              tileColor: Get.currentRoute == '/PersonalProfile'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(() => PersonalProfile());
                Get.offNamed('/PersonalProfile');
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
                Get.to(() => LoginMainPage());
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
              tileColor:
                  Get.currentRoute == '/SignUp' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.to(() => SignUp());
                Get.offNamed('/SignUp');
              },
            ),
          ],
        ),
      ),
    );
  }
}
