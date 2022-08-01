import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/trackingss/tracking.dart';
import 'package:sizer/sizer.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'My Orders',
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order ID: 33467878',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PhysicalModel(
                    color: Colors.white10,
                    shadowColor: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 7,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => Tracking());
                      },
                      child: Container(
                        height: 5.h,
                        width: 27.w,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Track Your Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Date : Feb 16,2022',
                    style: TextStyle(
                      fontSize: 6.sp,
                      wordSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Estimated delivery : Aug 15 2022',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(),
            SizedBox(
              height: 30.h,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int Index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 10.h,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              PhysicalModel(
                                color: Colors.grey,
                                elevation: 6,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 9.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/asset/ghee_image.jpeg'),
                                        fit: BoxFit.fill),
                                  ),
                                  //color: Colors.orange,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'Ghee',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(
                                width: 32.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total : Rs.490',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text(
                                    'Quantity : 1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8.sp,
                                    ),
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
            Divider(),
            SizedBox(
              height: 21.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Method',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Cash On Delivery',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                          ),
                        ),
                        Spacer(),
                        PhysicalModel(
                          color: Colors.grey,
                          elevation: 6,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 9.h,
                            width: 18.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/assets/asset/ghee_image.jpeg'),
                                  fit: BoxFit.fill),
                            ),
                            //color: Colors.orange,
                          ),
                        ),
                        Text(
                          '       Ghee',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 7,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'New Ashok Nagar 110096',
                          style: TextStyle(
                            fontSize: 10,
                            // color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Delhi',
                          style: TextStyle(
                            fontSize: 10,
                            // color: Colors.grey,
                          ),
                        ),
                        Text(
                          '908-678-910',
                          style: TextStyle(
                            fontSize: 10,
                            //color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        // Spacer(),
                        Text(
                          'Total: Rs 490',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            //color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Spacer(),
            PhysicalModel(
              color: Colors.white10,
              shadowColor: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
              elevation: 7,
              child: InkWell(
                onTap: () {
                  Get.to(() => NavBar());
                },
                child: Container(
                  height: 5.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Continue Shopping',
                      style: GoogleFonts.arapey(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      ),
    );
  }
}
