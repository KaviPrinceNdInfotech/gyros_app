import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/address_list_controller/address_list_controllers.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/model_cart_practice/viewss/adress_pagess/add_address_order.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/cart_total.dart';
import 'package:sizer/sizer.dart';

class AddressList extends StatelessWidget {
  AddressList({Key? key}) : super(key: key);

  final List<String> addresslist = ['1', '2', '3', '4', '5'];
  AddressListController _addressListController =
      Get.put(AddressListController());

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
      body: Column(
        children: [
          Container(
            height: size.height * 0.78,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1611072295125-59681c5402ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
                        //'https://images.unsplash.com/photo-1613408181923-f058a1b0e00c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw5NDY4NjEwfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60'
                        // 'https://images.unsplash.com/photo-1563898655817-170c8a11efdf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
                        ),
                    fit: BoxFit.cover)),
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: ListView.builder(
                  itemCount: addresslist.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.w, vertical: 0.9.h),
                      child: Obx(
                        () => InkWell(
                          child: InkWell(
                            onTap: () {
                              _addressListController.toggle(index);

                              if (index == 0) {
                                Get.to(() => TotalPrice());
                                //Get.to(() => BestSeller());
                                //Get.to(() => WaterTracking());
                              } else if (index == 1) {
                                Get.to(() => TotalPrice());
                                //Get.to(() => DateOfBirth());
                              } else if (index == 2) {
                                Get.to(() => TotalPrice());
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 3) {
                                Get.to(() => TotalPrice());
                                //Get.to(() => WalkTracking());
                              } else if (index == 4) {
                                Get.to(() => TotalPrice());
                                //Get.to(() => WalkTracking());
                              }
                            },
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                              elevation: 8,
                              child: Container(
                                height: size.height * 0.29,
                                //color: Colors.white,
                                decoration: BoxDecoration(
                                  gradient: _addressListController
                                              .selectedIndex.value ==
                                          index
                                      ? MyTheme.gradient5
                                      : MyTheme.gradient4,
                                  //gradient: MyTheme.gradient4

                                  // color:
                                  //     _addressListController.selectedIndex.value ==
                                  //             index
                                  //         ? Colors.lightBlue.shade200
                                  //
                                  //         : Colors.grey,
                                  border: Border.all(
                                    color: _addressListController
                                                .selectedIndex.value ==
                                            index
                                        ? Colors.white
                                        : Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: size.height * 0.03,
                                            width: size.width * 0.06,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: MyTheme.sweepGradient1,
                                            ),
                                            child: Center(
                                              child: Text(
                                                addresslist[index],
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'State:',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'City: ',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'Street: ',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'Area: ',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'Nearby: ',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'Building No: ',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            'Pin: ',
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '',
                                            style: TextStyle(
                                              color: AppColors.themecolors,
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.8.h,
                                          ),
                                          Text(
                                            'Delhi',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Text(
                                            'New Delhi',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Text(
                                            'New Ashok Nagar',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.9.h,
                                          ),
                                          Text(
                                            'New Ashok nagar Market',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.9.h,
                                          ),
                                          Text(
                                            'Noida Sector 15 Metro station',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.9.h,
                                          ),
                                          Text(
                                            'B6',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.9.h,
                                          ),
                                          Text(
                                            '110096',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
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
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Spacer(),
          Container(
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: MyTheme.loginbuttonColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton(
              //key: _formkeyphones,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddAddress()),
                );
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'Add Address',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
          Spacer(),
          // SizedBox(
          //   height: 2.h,
          // ),
        ],
      ),
    );
  }
}
