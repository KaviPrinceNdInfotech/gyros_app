import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/all_products/all_products_controllers.dart';
import 'package:gyros_app/controllers/sub_catagary_controllers/sub_cat_id_controllers.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/home_page/home_page_controller.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/cart_product2.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/gradient_button.dart';
import 'package:sizer/sizer.dart';

import '../../../model_cart_practice/controllers/cart_controllersss.dart';

class AllProducts extends StatelessWidget {
  AllProducts({Key? key}) : super(key: key);
  NavController _navController = Get.put(NavController());
  final CartController controller = Get.put(CartController());
  HomePageController _homePageController = Get.find();
  SubCatByIdController _subCatByIdController = Get.find();
  final CartController cartController = Get.put(CartController());
  AllProductController _allProductController = Get.put(AllProductController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var base = 'https://api.gyros.farm/Images/';
    final List<String> text = [
      ' Cow Ghee ',
      ' Oil ',
      ' Honey ',
      ' Jaggery ',
      ' Spices ',
      ' Sattu ',
      ' Sweets ',
    ];

    final List<String> images = [
      'https://images.unsplash.com/photo-1573812461383-e5f8b759d12e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2036&q=80',
      'https://images.unsplash.com/photo-1555211652-5c6222f971bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG9uZXl8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1610508500445-a4592435e27e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8amFnZ2VyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1596040033229-a9821ebd058d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3BpY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      'https://pureecoindia.in/wp-content/uploads/2019/11/Sattu-1024x614.png',
      'https://www.mapsofindia.com/ci-moi-images/my-india/Gulab-Jamun.jpg'
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'All Products',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.themecolors,
          ),
        ),
        leading: InkWell(
            onTap: () {
              _navController.tabindex(0);
              Get.to(() => NavBar());
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: AppColors.themecolors,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: InkWell(
                onTap: () {
                  Get.to(() => Cartproducts());
                  //Get.to(() => ShopingBagsEmpty());
                },
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Badge(
                    toAnimate: false,
                    badgeColor: AppColors.themecolors,
                    badgeContent: Obx(
                      () => (controller.isLoading.value)
                          ? Center(
                              child: CircularProgressIndicator(
                              color: Colors.lightGreenAccent,
                              backgroundColor: Colors.white,
                              valueColor: AlwaysStoppedAnimation(Colors.yellow),
                              strokeWidth: 3,
                            ))
                          : controller.cartListModel!.totalItem == null
                              //: _allProductController.allProductModel!.result!.isEmpty
                              //_bestSellerController.bestsellermodel!.result!.isEmpty
                              ? Center(
                                  child: Text('No data'),
                                )
                              : Text(
                                  controller.cartListModel!.totalItem
                                      .toString(),
                                  style: GoogleFonts.alatsi(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.green,
                    ),
                  ),
                )),
          ),
        ],
      ),
      body: Obx(
        () => (_allProductController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            //: _allProductController.allProductModel!.result != null
            : _allProductController.allProductModel!.result == null
                //: _allProductController.allProductModel!.result!.isEmpty
                //_bestSellerController.bestsellermodel!.result!.isEmpty
                ? Center(
                    child: Text('No data'),
                  )
                : SizedBox(
                    height: size.height,
                    width: size.width,
                    // color: Colors.red,
                    child: ListView.builder(
                        itemCount: _allProductController
                            .allProductModel!.result!.length,
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
                                      color: Colors.blueGrey,
                                      border: Border.all(
                                          color: Colors.green, width: 0)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(6.5),
                                        child: PhysicalModel(
                                          color: Colors.red,
                                          elevation: 10,
                                          child: Container(
                                            height: size.height * 0.38,
                                            //color: Colors.red,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              image: DecorationImage(
                                                  image: NetworkImage(base +
                                                      '${_allProductController.allProductModel!.result![index].productImage.toString()}'),
                                                  fit: BoxFit.fill),
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
                                                  Text(
                                                    _allProductController
                                                        .allProductModel!
                                                        .result![index]
                                                        .productName
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
                                                  SizedBox(
                                                    height: size.height * 0.02,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '₹${_allProductController.allProductModel!.result![index].price.toString()}',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 13.sp,
                                                          color: Colors
                                                              .yellowAccent,
                                                        ),
                                                      ),
                                                      Text(
                                                        '/500 gm',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 10.sp,
                                                          color: Colors.white,
                                                        ),
                                                      ),
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
                                                  Obx(
                                                    () => (_allProductController
                                                            .isLoading.value)
                                                        ? Center(
                                                            child:
                                                                CircularProgressIndicator())
                                                        : _allProductController
                                                                    .allProductModel!
                                                                    .result !=
                                                                null
                                                            //: _allProductController.allProductModel!.result!.isEmpty
                                                            //_bestSellerController.bestsellermodel!.result!.isEmpty
                                                            ? Center(
                                                                child: Text(
                                                                  'Save:'
                                                                  'No data'
                                                                  "%",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        10.sp,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              )
                                                            : Text(
                                                                'Save ${_allProductController.allProductModel!.result![index].quentity}%',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize:
                                                                      10.sp,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                  ),

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
                                                        controller.addtocartApi(
                                                            _allProductController
                                                                .allProductModel!
                                                                .result![index]
                                                                .id);
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

        // Container(
        //             height: size.height,
        //             child: GridView.builder(
        //                 shrinkWrap: true,
        //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                     crossAxisCount: 2,
        //                     childAspectRatio: 4 / 3,
        //                     mainAxisExtent: size.height * 0.24,
        //                     crossAxisSpacing: 0,
        //                     mainAxisSpacing: 0),
        //                 itemCount: _bestSellerController
        //                     .bestsellermodel!.result!.length,
        //                 itemBuilder: (BuildContext context, int index) {
        //                   return Padding(
        //                     padding: EdgeInsets.all(4.0),
        //                     child: InkWell(
        //                       onTap: () {
        //                         // _homePageController.toggle(index);
        //                         /* if (index == 0) {
        //                         //Get.to(() => ManPage());
        //                         //Get.to(() => BestSeller());
        //                         //Get.to(() => WaterTracking());
        //                       } else if (index == 1) {
        //                         //Get.to(() => ManPage());
        //                       } else if (index == 2) {
        //                         //Get.to(() => BestSeller());
        //                         //Get.to(() => WalkTracking());
        //                       } else if (index == 3) {
        //                         //Get.to(() => WalkTracking());
        //                       }*/
        //                       },
        //                       child: PhysicalModel(
        //                         borderRadius: BorderRadius.circular(5),
        //                         color: MyTheme.ThemeColors,
        //                         elevation: 0.1,
        //                         child: Container(
        //                           height: size.height * 55,
        //                           width: size.width * 0.48,
        //                           decoration: BoxDecoration(
        //                             image: DecorationImage(
        //                                 image: AssetImage(
        //                                   'lib/assets/asset/background4.jpeg',
        //                                 ),
        //                                 fit: BoxFit.fill),
        //                             borderRadius: BorderRadius.circular(5),
        //                             color: MyTheme.ContainerUnSelectedColor,
        //                           ),
        //                           child: Column(
        //                             //mainAxisAlignment: MainAxisAlignment.center,
        //                             children: [
        //                               Align(
        //                                 alignment: Alignment.centerLeft,
        //                                 child: Container(
        //                                   height: size.height * 0.03,
        //                                   width: size.width * 0.22,
        //                                   decoration: BoxDecoration(
        //                                       color: Colors.red,
        //                                       borderRadius: BorderRadius.only(
        //                                         topLeft: Radius.circular(5),
        //                                         bottomRight:
        //                                             Radius.circular(20),
        //                                       )),
        //                                   child: Center(
        //                                     child: Text(
        //                                       'BEST DEAL',
        //                                       //text1[index],
        //                                       style: TextStyle(
        //                                         color: Colors.white,
        //                                         fontWeight: FontWeight.w500,
        //                                         fontSize: 9.sp,
        //                                       ),
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Spacer(),
        //                               // SizedBox(
        //                               //   height: 0.6.h,
        //                               // ),
        //                               PhysicalModel(
        //                                 shadowColor: Colors.green,
        //                                 color: Colors.green,
        //                                 borderRadius: BorderRadius.circular(5),
        //                                 elevation: 5,
        //                                 child: Container(
        //                                   height: size.height * 0.11,
        //                                   width: size.width * 0.26,
        //                                   decoration: BoxDecoration(
        //                                     borderRadius:
        //                                         BorderRadius.circular(5),
        //                                     //border: Border.all(
        //                                     //   color: AppColors.themecolors),
        //                                     image: DecorationImage(
        //                                         image: NetworkImage(base +
        //                                             '${_bestSellerController.bestsellermodel!.result![index].productImage.toString()}'),
        //                                         fit: BoxFit.cover),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Spacer(),
        //                               Padding(
        //                                 padding: EdgeInsets.symmetric(
        //                                     horizontal: 1.7.w),
        //                                 child: Row(
        //                                   mainAxisAlignment:
        //                                       MainAxisAlignment.spaceBetween,
        //                                   children: [
        //                                     SizedBox(
        //                                       width: size.width * 0.27,
        //                                       height: size.height * 0.032,
        //                                       child: Text(
        //                                         _bestSellerController
        //                                             .bestsellermodel!
        //                                             .result![index]
        //                                             .productName
        //                                             .toString(),
        //                                         style: TextStyle(
        //                                           fontWeight: FontWeight.w400,
        //                                           fontSize: size.height * 0.015,
        //                                           color: Colors.yellow,
        //                                         ),
        //                                       ),
        //                                     ),
        //                                     Text(
        //                                       'Save ${_bestSellerController.bestsellermodel!.result![index].discount}%',
        //                                       style: TextStyle(
        //                                         fontWeight: FontWeight.w400,
        //                                         fontSize: 10.sp,
        //                                         color: Colors.white,
        //                                       ),
        //                                     ),
        //                                   ],
        //                                 ),
        //                               ),
        //                               Padding(
        //                                 padding: EdgeInsets.symmetric(
        //                                     horizontal: 2.w),
        //                                 child: Align(
        //                                   alignment: Alignment.centerLeft,
        //                                   child: Text(
        //                                     '',
        //                                     style: TextStyle(
        //                                       decoration:
        //                                           TextDecoration.lineThrough,
        //                                       fontWeight: FontWeight.w400,
        //                                       fontSize: 7.sp,
        //                                       color: Colors.white,
        //                                     ),
        //                                   ),
        //                                 ),
        //                               ),
        //                               Row(
        //                                 children: [
        //                                   SizedBox(
        //                                     width: size.width * 0.48,
        //                                     child: Padding(
        //                                       padding: EdgeInsets.symmetric(
        //                                           horizontal: 2.w),
        //                                       child: Row(
        //                                         children: [
        //                                           Text(
        //                                             _bestSellerController
        //                                                 .bestsellermodel!
        //                                                 .result![index]
        //                                                 .price
        //                                                 .toString(),
        //                                             style: TextStyle(
        //                                               fontWeight:
        //                                                   FontWeight.w900,
        //                                               fontSize: 8.sp,
        //                                               color:
        //                                                   Colors.yellowAccent,
        //                                             ),
        //                                           ),
        //                                           Text(
        //                                             ' /500 gm',
        //                                             style: TextStyle(
        //                                               fontWeight:
        //                                                   FontWeight.w600,
        //                                               fontSize: 7.sp,
        //                                               color: Colors.white70,
        //                                             ),
        //                                           ),
        //                                           Spacer(),
        //                                           // SizedBox(
        //                                           //   width: 4.w,
        //                                           // ),
        //                                           Container(
        //                                             height: 3.1.h,
        //                                             width: 21.5.w,
        //                                             decoration: BoxDecoration(
        //                                               borderRadius:
        //                                                   BorderRadius.circular(
        //                                                       20),
        //                                             ),
        //                                             child: InkWell(
        //                                               onTap: () {
        //                                                 cartController
        //                                                     .addProduct(Productss
        //                                                             .products[
        //                                                         index]);
        //                                               },
        //                                               child:
        //                                                   RaisedGradientButton(
        //                                                 //height: 3.3.h,
        //                                                 //width: 23.9.w,
        //                                                 child: Text(
        //                                                   'Add To Cart',
        //                                                   style: TextStyle(
        //                                                       color:
        //                                                           Colors.white,
        //                                                       fontWeight:
        //                                                           FontWeight
        //                                                               .w600,
        //                                                       fontSize: 7.sp),
        //                                                 ),
        //                                                 gradient:
        //                                                     LinearGradient(
        //                                                   colors: <Color>[
        //                                                     Colors.green,
        //                                                     Colors.cyan.shade400
        //                                                   ],
        //                                                 ),
        //                                                 onPressed: () {
        //                                                   cartController
        //                                                       .addProduct(Productss
        //                                                               .products[
        //                                                           index]);
        //                                                   print('Add To cart');
        //                                                 },
        //                                               ),
        //                                             ),
        //                                           ),
        //                                         ],
        //                                       ),
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                               SizedBox(
        //                                 height: 1.h,
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   );
        //                 }),
        //           ),
      ),

      // Obx(() => (_allProductController.isLoading.value == false)
      //     ? Container(
      //         //height: size.height,
      //         width: double.infinity,
      //         color: Colors.white,
      //         child: SizedBox(
      //           //height: size.height,
      //           width: size.width,
      //           // color: Colors.red,
      //           child: SingleChildScrollView(
      //             child: Column(
      //               children: [
      //                 Container(
      //                   height: size.height * 0.03,
      //                   width: size.width,
      //                   color: Colors.green,
      //                   child: Center(
      //                     child: Text(
      //                       'See your All Product',
      //                       style:
      //                           TextStyle(fontSize: 10.sp, color: Colors.white),
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   height: size.height * 93,
      //                   child: ListView.builder(
      //                       shrinkWrap: true,
      //                       itemCount: _allProductController
      //                           .allProductModel!.result!.length,
      //                       itemBuilder: (BuildContext contextr, int index) {
      //                         return Padding(
      //                           padding: EdgeInsets.symmetric(
      //                               vertical: size.height * 0.003),
      //                           child: Column(
      //                             children: [
      //                               Container(
      //                                 height: size.height * 0.520,
      //                                 width: size.width,
      //                                 decoration: BoxDecoration(
      //                                     color: Colors.blueGrey,
      //                                     border: Border.all(
      //                                         color: Colors.green, width: 0)),
      //                                 child: Column(
      //                                   children: [
      //                                     Padding(
      //                                       padding: EdgeInsets.all(6.5),
      //                                       child: PhysicalModel(
      //                                         color: Colors.red,
      //                                         elevation: 10,
      //                                         child: Container(
      //                                           height: size.height * 0.38,
      //                                           //color: Colors.red,
      //                                           decoration: BoxDecoration(
      //                                             color: Colors.grey,
      //                                             image: DecorationImage(
      //                                                 image: NetworkImage(base +
      //                                                     '${_allProductController.allProductModel!.result![index].productImage.toString()}'),
      //                                                 fit: BoxFit.fill),
      //                                           ),
      //                                         ),
      //                                       ),
      //                                     ),
      //                                     Container(
      //                                       height: size.height * 0.12,
      //                                       //color: Color(0xff023020),
      //                                       decoration: BoxDecoration(
      //                                           color: Color(0xff023020),
      //                                           border: Border.all(
      //                                               color: Colors.blueGrey,
      //                                               width: 2)),
      //                                       child: Padding(
      //                                         padding: EdgeInsets.symmetric(
      //                                             horizontal:
      //                                                 size.width * 0.02),
      //                                         child: Row(
      //                                           mainAxisAlignment:
      //                                               MainAxisAlignment
      //                                                   .spaceBetween,
      //                                           crossAxisAlignment:
      //                                               CrossAxisAlignment.center,
      //                                           children: [
      //                                             Column(
      //                                               mainAxisAlignment:
      //                                                   MainAxisAlignment
      //                                                       .center,
      //                                               crossAxisAlignment:
      //                                                   CrossAxisAlignment
      //                                                       .start,
      //                                               children: [
      //                                                 Text(
      //                                                   _allProductController
      //                                                       .allProductModel!
      //                                                       .result![index]
      //                                                       .productName
      //                                                       .toString(),
      //                                                   overflow: TextOverflow
      //                                                       .ellipsis,
      //                                                   maxLines: 3,
      //                                                   style: TextStyle(
      //                                                     fontWeight:
      //                                                         FontWeight.w700,
      //                                                     fontSize: 15.sp,
      //                                                     color: Colors.yellow,
      //                                                   ),
      //                                                 ),
      //                                                 SizedBox(
      //                                                   height:
      //                                                       size.height * 0.02,
      //                                                 ),
      //                                                 Row(
      //                                                   children: [
      //                                                     Text(
      //                                                       '₹${_allProductController.allProductModel!.result![index].price.toString()}',
      //                                                       style: TextStyle(
      //                                                         fontWeight:
      //                                                             FontWeight
      //                                                                 .w900,
      //                                                         fontSize: 13.sp,
      //                                                         color: Colors
      //                                                             .yellowAccent,
      //                                                       ),
      //                                                     ),
      //                                                     Text(
      //                                                       '/500 gm',
      //                                                       style: TextStyle(
      //                                                         fontWeight:
      //                                                             FontWeight
      //                                                                 .w700,
      //                                                         fontSize: 10.sp,
      //                                                         color:
      //                                                             Colors.white,
      //                                                       ),
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ],
      //                                             ),
      //                                             Column(
      //                                               mainAxisAlignment:
      //                                                   MainAxisAlignment
      //                                                       .center,
      //                                               crossAxisAlignment:
      //                                                   CrossAxisAlignment.end,
      //                                               children: [
      //                                                 Text(
      //                                                   'Save 30%',
      //                                                   style: TextStyle(
      //                                                     fontWeight:
      //                                                         FontWeight.w700,
      //                                                     fontSize: 10.sp,
      //                                                     color: Colors.white,
      //                                                   ),
      //                                                 ),
      //
      //                                                 // Spacer(),
      //                                                 // SizedBox(
      //                                                 //   width: 4.w,
      //                                                 // ),
      //                                                 SizedBox(
      //                                                   height:
      //                                                       size.height * 0.02,
      //                                                 ),
      //                                                 Container(
      //                                                   height: 4.5.h,
      //                                                   width: 33.5.w,
      //                                                   decoration:
      //                                                       BoxDecoration(
      //                                                     borderRadius:
      //                                                         BorderRadius
      //                                                             .circular(20),
      //                                                   ),
      //                                                   child: InkWell(
      //                                                     onTap: () {
      //                                                       cartController
      //                                                           .addProduct(
      //                                                               Productss
      //                                                                       .products[
      //                                                                   index]);
      //                                                     },
      //                                                     child:
      //                                                         RaisedGradientButton(
      //                                                       //height: 3.3.h,
      //                                                       //width: 23.9.w,
      //                                                       child: Text(
      //                                                         'Add To Cart',
      //                                                         style: TextStyle(
      //                                                             color: Colors
      //                                                                 .white,
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .w600,
      //                                                             fontSize:
      //                                                                 10.sp),
      //                                                       ),
      //                                                       gradient:
      //                                                           LinearGradient(
      //                                                         colors: <Color>[
      //                                                           Colors.green,
      //                                                           Colors.cyan
      //                                                               .shade400
      //                                                         ],
      //                                                       ),
      //                                                       onPressed: () {
      //                                                         cartController
      //                                                             .addProduct(
      //                                                                 Productss
      //                                                                         .products[
      //                                                                     index]);
      //                                                         print(
      //                                                             'Add To cart');
      //                                                       },
      //                                                     ),
      //                                                   ),
      //                                                 ),
      //                                               ],
      //                                             ),
      //                                           ],
      //                                         ),
      //                                       ),
      //                                     )
      //                                   ],
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         );
      //                       }),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //
      //         ///here all product api..............
      //         // ListView.builder(
      //         //     shrinkWrap: true,
      //         //     itemCount:
      //         //         _homePageController.getcatagartlist!.result!.length,
      //         //     itemBuilder: (BuildContext context, int index) {
      //         //       return Padding(
      //         //         padding: const EdgeInsets.all(1.0),
      //         //         child: InkWell(
      //         //           onTap: () {
      //         //             _subCatByIdController.catid = _homePageController
      //         //                 .getcatagartlist!.result![index].id
      //         //                 .toString();
      //         //             _subCatByIdController.subcatidApi();
      //         //
      //         //             // if (index == 0) {
      //         //             //   Get.to(() => CowGhee());
      //         //             // } else if (index == 1) {
      //         //             //   Get.to(() => Oil());
      //         //             // } else if (index == 2) {
      //         //             //   Get.to(() => Honey());
      //         //             // } else if (index == 3) {
      //         //             //   Get.to(() => Jeggary());
      //         //             // } else if (index == 4) {
      //         //             //   Get.to(() => Spices());
      //         //             // } else if (index == 5) {
      //         //             //   Get.to(() => Sattu());
      //         //             // } else if (index == 6) {
      //         //             //   Get.to(() => Sweets());
      //         //             // }
      //         //           },
      //         //           child: Container(
      //         //             height: size.height * 0.25,
      //         //             width: double.infinity,
      //         //             decoration: BoxDecoration(
      //         //                 border: Border.all(
      //         //                     color: AppColors.themecolors, width: 2),
      //         //                 image: DecorationImage(
      //         //                   image: NetworkImage(base +
      //         //                       '${_homePageController.getcatagartlist!.result![index].imageName.toString()}'),
      //         //                   fit: BoxFit.cover,
      //         //                   // centerSlice: Rect.fromCenter(
      //         //                   //     center: Offset(200, 200),
      //         //                   //     width: 1,
      //         //                   //     height: 1),
      //         //                   onError:
      //         //                       (Object exception, StackTrace? stackTrace) {
      //         //                     Text('No Image');
      //         //                     // Icon(
      //         //                     //   Icons.error,
      //         //                     //   color: Colors.red,
      //         //                     // );
      //         //                     print('onError');
      //         //                     print('Exception: $exception');
      //         //                     print('Stack Trace:\n$stackTrace');
      //         //                   },
      //         //                 )),
      //         //             child: Padding(
      //         //               padding: EdgeInsets.all(8.0),
      //         //               child: Text(
      //         //                 _homePageController
      //         //                     .getcatagartlist!.result![index].categoryName
      //         //                     .toString(),
      //         //                 style: GoogleFonts.abhayaLibre(
      //         //                   backgroundColor: Colors.white70,
      //         //                   fontStyle: FontStyle.italic,
      //         //                   color: AppColors.themecolors,
      //         //                   fontSize: 20.sp,
      //         //                   fontWeight: FontWeight.bold,
      //         //                 ),
      //         //               ),
      //         //             ),
      //         //           ),
      //         //         ),
      //         //       );
      //         //     }),
      //       )
      //     : Center(child: CircularProgressIndicator())),
    );
  }
}
