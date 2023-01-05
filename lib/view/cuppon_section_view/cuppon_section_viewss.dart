import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/cuppons_controller/cuppon_list_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/gradient_button.dart';
import 'package:sizer/sizer.dart';

class CupponList extends StatelessWidget {
  CupponList({Key? key}) : super(key: key);

  //final RozarPayController _rozarPayController = Get.find();
  //NavController _navController = Get.put(NavController());
  // final CartController controller = Get.put(CartController());
  CupponListController _cupponListController = Get.put(CupponListController());

  //GiftBoxController _giftBoxController = Get.put(GiftBoxController());
  //final CartController cartController = Get.put(CartController());
  // FlashProductByIdController _flashProductByIdController =
  // Get.put(FlashProductByIdController());

  var height, width;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    var base = 'https://api.gyros.farm/Images/';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cuppon List',
          style: TextStyle(
              color: AppColors.themecolors, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              //_navController.tabindex(0);
              Get.to(() => NavBar());
              //Get.back();
              // _homePageController.toggle(index);
              //Get.to(() => WalkTracking());
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: AppColors.themecolors,
            )),
      ),
      body: Obx(
        () => (_cupponListController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            //: _allProductController.allProductModel!.result != null
            :
            //_cupponListController.cupponModel?.result == null
            //_cupponListController.cupponModel?.result == null
            _cupponListController.cupponModel!.result! != null
                //: _giftBoxController.giftcardModel!.result!.isEmpty
                ? Center(
                    child: Text('Please Remove null value'),
                  )
                : SizedBox(
                    height: size.height * 0.93,
                    width: size.width,
                    // color: Colors.red,
                    child: ListView.builder(
                        // shrinkWrap: true,
                        itemCount:
                            _cupponListController.cupponModel?.result?.length,
                        itemBuilder: (BuildContext contextr, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.003),
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.520,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueGrey,
                                      border: Border.all(
                                          color: Colors.green, width: 0)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(6.5),
                                        child: PhysicalModel(
                                          color: Colors.transparent,
                                          elevation: 10,
                                          child: InkWell(
                                            onTap: () {
                                              // _flashProductByIdController
                                              //     .productid =
                                              //     _giftBoxController
                                              //         .giftcardModel!
                                              //         .result![index]
                                              //         .id
                                              //         .toString();
                                              // _flashProductByIdController
                                              //     .flashproductbyIdApi();
                                              ///
                                              // _flashProductByIdController
                                              //     .productid =
                                              //     _allProductController
                                              //         .allProductModel!
                                              //         .result![index]
                                              //         .id
                                              //         .toString();
                                              // _flashProductByIdController
                                              //     .flashproductbyIdApi();
                                            },
                                            child: Container(
                                              height: size.height * 0.38,
                                              //color: Colors.red,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.red,
                                                // image: DecorationImage(
                                                //     image: NetworkImage(base +
                                                //         '${_giftBoxController.giftcardModel!.result![index].imageName.toString()}'),
                                                //     fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: size.height * 0.12,
                                        //color: Color(0xff023020),
                                        decoration: BoxDecoration(
                                            color: Color(0xff023020),
                                            border: Border.all(
                                                color: Colors.blueGrey,
                                                width: 2)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * 0.02),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   '${_giftBoxController.giftcardModel!.result![index]..toString()} gm',
                                                  //   style: TextStyle(
                                                  //     fontWeight:
                                                  //     FontWeight.w700,
                                                  //     fontSize: 10.sp,
                                                  //     color: Colors.white,
                                                  //   ),
                                                  // ),
                                                  SizedBox(
                                                    height: size.height * 0.007,
                                                  ),

                                                  SizedBox(
                                                    width: size.width * 0.48,
                                                    height: size.height * 0.03,
                                                    child: Text(
                                                      _cupponListController
                                                          .cupponModel!
                                                          .result![index]
                                                          .name
                                                          .toString(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 3,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15.sp,
                                                        color: Colors.yellow,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: size.height * 0.01,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '',
                                                        //'₹${_cupponListController.cupponModel!.result![index].couponCode.toString()}',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 13.sp,
                                                          color: Colors
                                                              .yellowAccent,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            size.width * 0.009,
                                                      ),
                                                      // Text(
                                                      //   '₹${_allProductController.allProductModel!.result![index].price.toString()}',
                                                      //   style: TextStyle(
                                                      //     decoration:
                                                      //     TextDecoration
                                                      //         .lineThrough,
                                                      //     // decorationStyle:
                                                      //     //     TextDecorationStyle.wavy,
                                                      //     decorationColor:
                                                      //     Colors
                                                      //         .red.shade900,
                                                      //     decorationThickness:
                                                      //     2.85,
                                                      //     fontWeight:
                                                      //     FontWeight.w700,
                                                      //     fontSize: 10.sp,
                                                      //     color: Colors.white,
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),

                                                  // Padding(
                                                  //   padding: EdgeInsets.symmetric(
                                                  //       horizontal: 0.5.w),
                                                  //   child: Row(
                                                  //     mainAxisAlignment:
                                                  //         MainAxisAlignment
                                                  //             .spaceBetween,
                                                  //     children: [
                                                  //       SizedBox(
                                                  //         width: size.width * 0.50,
                                                  //         height:
                                                  //             size.height * 0.025,
                                                  //         child: Text(
                                                  //           _catByIdController
                                                  //               .getcatbyid!
                                                  //               .result![index]
                                                  //               .productName
                                                  //               .toString(),
                                                  //           overflow: TextOverflow
                                                  //               .ellipsis,
                                                  //           maxLines: 3,
                                                  //           style: TextStyle(
                                                  //             fontWeight:
                                                  //                 FontWeight.w700,
                                                  //             fontSize: 15.sp,
                                                  //             color: Colors.yellow,
                                                  //           ),
                                                  //         ),
                                                  //       ),
                                                  //       Text(
                                                  //         'Save 30%',
                                                  //         style: TextStyle(
                                                  //           fontWeight:
                                                  //               FontWeight.w500,
                                                  //           fontSize: 13.sp,
                                                  //           color: Colors.white,
                                                  //         ),
                                                  //       ),
                                                  //     ],
                                                  //   ),
                                                  // ),
                                                  // Padding(
                                                  //   padding: EdgeInsets.symmetric(
                                                  //       horizontal: 0.5.w),
                                                  //   child: Row(
                                                  //     children: [
                                                  //       SizedBox(
                                                  //         width: size.width,
                                                  //         //width: 23.w,
                                                  //         child: Padding(
                                                  //           padding: EdgeInsets
                                                  //               .symmetric(
                                                  //                   horizontal:
                                                  //                       size.width *
                                                  //                           0.00),
                                                  //           child: Row(
                                                  //             // mainAxisAlignment:
                                                  //             //     MainAxisAlignment
                                                  //             //         .spaceBetween,
                                                  //             children: [
                                                  //               Text(
                                                  //                 '₹${_catByIdController.getcatbyid!.result![index].price.toString()}',
                                                  //                 style: TextStyle(
                                                  //                   fontWeight:
                                                  //                       FontWeight
                                                  //                           .w900,
                                                  //                   fontSize: 13.sp,
                                                  //                   color: Colors
                                                  //                       .yellowAccent,
                                                  //                 ),
                                                  //               ),
                                                  //               Text(
                                                  //                 '/500 gm',
                                                  //                 style: TextStyle(
                                                  //                   fontWeight:
                                                  //                       FontWeight
                                                  //                           .w700,
                                                  //                   fontSize: 10.sp,
                                                  //                   color: Colors
                                                  //                       .white,
                                                  //                 ),
                                                  //               ),
                                                  //
                                                  //               // Spacer(),
                                                  //               // SizedBox(
                                                  //               //   width: 4.w,
                                                  //               // ),
                                                  //               Container(
                                                  //                 height: 4.5.h,
                                                  //                 width: 33.5.w,
                                                  //                 decoration:
                                                  //                     BoxDecoration(
                                                  //                   borderRadius:
                                                  //                       BorderRadius
                                                  //                           .circular(
                                                  //                               20),
                                                  //                 ),
                                                  //                 child: InkWell(
                                                  //                   onTap: () {
                                                  //                     cartController
                                                  //                         .addProduct(
                                                  //                             Productss
                                                  //                                 .products[index]);
                                                  //                   },
                                                  //                   child:
                                                  //                       RaisedGradientButton(
                                                  //                     //height: 3.3.h,
                                                  //                     //width: 23.9.w,
                                                  //                     child: Text(
                                                  //                       'Add To Cart',
                                                  //                       style: TextStyle(
                                                  //                           color: Colors
                                                  //                               .white,
                                                  //                           fontWeight:
                                                  //                               FontWeight
                                                  //                                   .w600,
                                                  //                           fontSize:
                                                  //                               10.sp),
                                                  //                     ),
                                                  //                     gradient:
                                                  //                         LinearGradient(
                                                  //                       colors: <
                                                  //                           Color>[
                                                  //                         Colors
                                                  //                             .green,
                                                  //                         Colors
                                                  //                             .cyan
                                                  //                             .shade400
                                                  //                       ],
                                                  //                     ),
                                                  //                     onPressed:
                                                  //                         () {
                                                  //                       cartController
                                                  //                           .addProduct(
                                                  //                               Productss.products[index]);
                                                  //                       print(
                                                  //                           'Add To cart');
                                                  //                     },
                                                  //                   ),
                                                  //                 ),
                                                  //               ),
                                                  //             ],
                                                  //           ),
                                                  //         ),
                                                  //       ),
                                                  //     ],
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  // Spacer(),
                                                  // SizedBox(
                                                  //   width: 4.w,
                                                  // ),

                                                  SizedBox(
                                                    height: size.height * 0.02,
                                                  ),
                                                  Container(
                                                    height: 4.5.h,
                                                    width: 33.5.w,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: InkWell(
                                                      onTap: () {
                                                        // controller.addtocartApi(
                                                        //     _giftBoxController
                                                        //         .giftcardModel!
                                                        //         .result![index]
                                                        //         .id);
                                                        ///
                                                        // cartController
                                                        //     .addProduct(Productss
                                                        //             .products[
                                                        //         index]);
                                                      },
                                                      child:
                                                          RaisedGradientButton(
                                                        //height: 3.3.h,
                                                        //width: 23.9.w,
                                                        child: Text(
                                                          'Add To Cart',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 10.sp),
                                                        ),
                                                        gradient:
                                                            LinearGradient(
                                                          colors: <Color>[
                                                            Color(0xff3a923b),
                                                            Color(0xffb5d047),
                                                            // Colors.green,
                                                            // Colors.cyan.shade400
                                                          ],
                                                        ),
                                                        onPressed: () {
                                                          // cartController
                                                          //     .addProduct(Productss
                                                          //             .products[
                                                          //         index]);
                                                          print('Add To cart');
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
      ),
    );
  }
}
