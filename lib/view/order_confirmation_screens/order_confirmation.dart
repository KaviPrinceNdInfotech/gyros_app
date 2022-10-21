import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/controllers/gift_box_controller.dart';
import 'package:gyros_app/controllers/order_history_controller/order_history_controllers.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/get_profile/get_profile_controller.dart';
import '../botttom_nav_bar/bottom_navbar.dart';
import '../custom_widgets/my_theme.dart';
import '../wave_view_tracking/wave_views_trackings.dart';

class OrderConfirmationPage extends StatelessWidget {
  OrderConfirmationPage({Key? key}) : super(key: key);
  NavController _navController = Get.put(NavController(), permanent: true);

  GetProfileController _getProfileController = Get.put(GetProfileController());
  //final CartController controller = Get.put(CartController());
  GiftBoxController _giftBoxController = Get.put(GiftBoxController());
  OrderHistoryController _orderHistoryController =
      Get.put(OrderHistoryController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var base = 'https://api.gyros.farm/Images/';

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Order Confirmation!',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp),
        ),
      ),
      body: Obx(
        () => (_getProfileController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : SafeArea(
                child: Container(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: size.height * 0.1,
                        width: size.width * 0.3,
                        child: Image.asset(
                          'lib/assets/asset/24847-confirmation.gif',
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Trust and Order with Us!',
                        style: TextStyle(
                            backgroundColor: Colors.green,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height * 0.60,
                          width: size.width,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // Text(
                                    //   'Hi ',
                                    //   style: TextStyle(
                                    //     fontSize: 12.sp,
                                    //     fontWeight: FontWeight.w900,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   _getProfileController
                                    //       .getprofileModel!.result!.name
                                    //       .toString(),
                                    //   style: TextStyle(
                                    //       fontSize: 12.sp,
                                    //       fontWeight: FontWeight.w900,
                                    //       color: MyTheme.containercolor18),
                                    // ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Thank you for purchasing on Gyros',
                                      style: TextStyle(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Material(
                                      elevation: 4,
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(() => WebViewTracking());
                                          // Get.to(() => Tracking());
                                        },
                                        child: Container(
                                          height: size.height * 0.035,
                                          width: size.width * 0.3,
                                          color: MyTheme.containercolor7,
                                          child: Center(
                                              child: Text(
                                            'Track Your Order',
                                            style: TextStyle(
                                              fontSize: 9.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                // Row(
                                //   children: [
                                //     Text(
                                //       'Order Code:',
                                //       style: TextStyle(
                                //         fontSize: 12.sp,
                                //         fontWeight: FontWeight.w600,
                                //       ),
                                //     ),
                                //     Text(
                                //       '1123345',
                                //       style: TextStyle(
                                //         fontSize: 12.sp,
                                //         color: Colors.green,
                                //         fontWeight: FontWeight.w600,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                Divider(),
                                // Padding(
                                //   padding: EdgeInsets.symmetric(
                                //       horizontal: size.width * 0.02,
                                //       vertical: size.height * 0.007),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(
                                //         'SubTotal:',
                                //         style: TextStyle(
                                //           fontSize: 10.sp,
                                //           fontWeight: FontWeight.w400,
                                //         ),
                                //       ),
                                //       Text(
                                //         'Rs.500',
                                //         style: TextStyle(
                                //           fontSize: 10.sp,
                                //           fontWeight: FontWeight.w400,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: 1.h,
                                // ),
                                // Padding(
                                //   padding: EdgeInsets.symmetric(
                                //       horizontal: size.width * 0.02),
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(
                                //         'Delivery Fee:',
                                //         style: TextStyle(
                                //           fontSize: 10.sp,
                                //           fontWeight: FontWeight.w400,
                                //         ),
                                //       ),
                                //       Text(
                                //         'Rs.100',
                                //         style: TextStyle(
                                //           fontSize: 10.sp,
                                //           fontWeight: FontWeight.w400,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                SizedBox(
                                  height: 0.h,
                                ),
                                // Container(
                                //   height: size.height * 0.05,
                                //   //width: size.width * 0.9,
                                //   color: Colors.black,
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(12.0),
                                //     child: Row(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.spaceBetween,
                                //       children: [
                                //         Text(
                                //           "Total:",
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontSize: 12.sp,
                                //             fontWeight: FontWeight.w600,
                                //           ),
                                //         ),
                                //         Text(
                                //           '₹${controller.cartListModel!.totalPrice.toString()}',
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontSize: 12.sp,
                                //             fontWeight: FontWeight.w700,
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'ORDER DETAILS:',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Divider(),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Obx(
                                  () => (_getProfileController.isLoading.value)
                                      ? Center(
                                          child: CircularProgressIndicator())
                                      : _getProfileController
                                                  .orderHistoryModel ==
                                              null
                                          ? Center(
                                              child: Text('No List'),
                                            )
                                          : SizedBox(
                                              height: size.height * 0.41,
                                              child: ListView.builder(
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      _getProfileController
                                                          .orderHistoryModel!
                                                          .result!
                                                          .length,

                                                  // 4,
                                                  // _getProfileController
                                                  //     .getorderhistorymodel!
                                                  //     .result!
                                                  //     .length,
                                                  // _getProfileController
                                                  //     .getorderhistorymodel!
                                                  //     .result!
                                                  //     .length,
                                                  // _orderHistoryController.orderHistoryModel.status.,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              1.0),
                                                      child: Container(
                                                        height:
                                                            size.height * 0.25,
                                                        color: MyTheme
                                                            .containercolor7,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                height:
                                                                    size.height *
                                                                        0.2,
                                                                width:
                                                                    size.width *
                                                                        0.3,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Name:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Mobile:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Email:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Product Name:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Total Item:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Price:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Date:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    Text(
                                                                      'Order Id:',
                                                                      style: GoogleFonts.poppins(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 2.w,
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    size.height *
                                                                        0.2,
                                                                width:
                                                                    size.width *
                                                                        0.42,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      //'Name',
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .name!
                                                                          .toString(),
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .mobile!
                                                                          .toString(),
                                                                      //'Mobile',
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .email!
                                                                          .toString(),
                                                                      //'Email',
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .productName!
                                                                          .toString(),
                                                                      // 'Product Name',
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .totalItem
                                                                          .toString(),
                                                                      // 'Total Item,
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .price
                                                                          .toString(),

                                                                      //'Price',
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .date!
                                                                          .toString(),
                                                                      //'Date',
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Text(
                                                                      _getProfileController
                                                                          .orderHistoryModel!
                                                                          .result![
                                                                              index]
                                                                          .id
                                                                          .toString(),
                                                                      //'Order Id',
                                                                      style: GoogleFonts.raleway(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _navController.tabindex(0);
                          Get.to(() => NavBar());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: size.height * 0.04,
                            width: size.width * 0.5,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'BACK TO SHOPPING',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11.sp),
                              ),
                            ),
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
