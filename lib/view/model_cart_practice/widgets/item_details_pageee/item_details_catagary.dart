import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/rozar_pay_controller/rozar_pay_controller.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/model_cart_practice/controllers/cart_controllersss.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/cart_product2.dart';
import 'package:sizer/sizer.dart';

import '../../../../controllers/flash_sale_product_by_id_controllers/flash_product_by_id_controller.dart';

class ItemDetailss extends StatelessWidget {
  final _sliderKey1 = GlobalKey();
  final CartController controller = Get.put(CartController());
  final RozarPayController _rozarPayController = Get.find();

  String textHolder = '268 ';

  void clickFunction() {
    // setState(() {
    //   textHolder = '260';
    //
    // });

    print('260');
  }

  FlashProductByIdController _flashProductByIdController =
      Get.put(FlashProductByIdController());
  final cartController = Get.put(CartController());
  //bool enableAutoSlider = false;
  //final int index;
  ItemDetailss({
    Key? key,
    // required this.index,
    // required this.id,
    // required this.name,
    // required this.price,
    // required this.weight,
    // required this.imageUrl,
    // required this.description,
    // required this.color,
    //required this.index
  }) : super(key: key);

  // final String name;
  // final double price;
  // final String weight;
  // final String imageUrl;
  // final String description;
  // final String color;
  // final String id;
  // final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var base = 'https://api.gyros.farm/Images/';
    return Scaffold(
      backgroundColor: Color(0xffffdb61),
      // backgroundColor:
      //     Color(int.parse(Productss.products[index].color.toString())),
      appBar: AppBar(
        centerTitle: true,
        //Productss.products[index].weight
        backgroundColor: AppColors.themecolors,
        //Color(0xffffdb61),
        //     Color(int.parse(Productss.products[index].color.toString())),
        elevation: 0,
        title: Text(
          'Items Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
                  child:
                      // Badge(
                      //   toAnimate: true,
                      //   badgeColor: AppColors.themecolors,
                      //   badgeContent: Obx(
                      //     () => (controller.isLoading.value)
                      //         ? Center(child: CircularProgressIndicator())
                      //         : controller.cartListModel!.result! == null
                      //             // ? Center(
                      //             //     child: Text('0'),
                      //             //   )
                      //             // :
                      //             ? Center(
                      //                 child: CircularProgressIndicator(
                      //                 color: Colors.lightGreenAccent,
                      //                 backgroundColor: Colors.white,
                      //                 valueColor:
                      //                     AlwaysStoppedAnimation(Colors.yellow),
                      //                 strokeWidth: 3,
                      //               ))
                      //             : Text(
                      //                 controller.cartListModel!.totalItem
                      //                     .toString(),
                      //                 style: GoogleFonts.alatsi(
                      //                   color: Colors.white,
                      //                   fontSize: 10.sp,
                      //                 ),
                      //               ),
                      //   ),
                      //   child: Icon(
                      //     Icons.shopping_cart,
                      //     color: Colors.green,
                      //   ),
                      // ),
                      Icon(
                    Icons.shopping_cart,
                    size: size.height * 0.035,
                    color: Colors.white,
                  ),
                )

                // Padding(
                //   padding: EdgeInsets.all(6.0),
                //   child: Badge(
                //     toAnimate: false,
                //     badgeColor: AppColors.themecolors,
                //     badgeContent: Obx(
                //       () => (controller.isLoading.value)
                //           ? Center(
                //               child: CircularProgressIndicator(
                //               color: Colors.lightGreenAccent,
                //               backgroundColor: Colors.white,
                //               valueColor: AlwaysStoppedAnimation(Colors.yellow),
                //               strokeWidth: 3,
                //             ))
                //           : controller.cartListModel!.totalItem == null
                //               //: controller.cartListModel!.totalItem == null
                //               //: _allProductController.allProductModel!.result!.isEmpty
                //               //_bestSellerController.bestsellermodel!.result!.isEmpty
                //               ? Center(
                //                   child: Text('0'),
                //                 )
                //               : Text(
                //                   controller.cartListModel!.totalItem
                //                       .toString(),
                //                   style: GoogleFonts.alatsi(
                //                     color: Colors.white,
                //                     fontSize: 10.sp,
                //                   ),
                //                 ),
                //     ),
                //     child: Icon(
                //       Icons.shopping_cart,
                //       color: Colors.green,
                //     ),
                //   ),
                // )
                ),
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 3.w),
          //   child: InkWell(
          //       onTap: () {
          //         Get.to(() => Cartproducts());
          //         //Get.to(() => ShopingBagsEmpty());
          //       },
          //       child: Padding(
          //         padding: EdgeInsets.all(6.0),
          //         child: Badge(
          //           toAnimate: false,
          //           //badgeColor: AppColors.themecolors,
          //           badgeContent: Obx(
          //             () => (controller.isLoading.value)
          //                 ? Center(
          //                     child: CircularProgressIndicator(
          //                     color: Colors.lightGreenAccent,
          //                     backgroundColor: Colors.white,
          //                     valueColor: AlwaysStoppedAnimation(Colors.yellow),
          //                     strokeWidth: 3,
          //                   ))
          //                 : Text(
          //                     controller.cartListModel!.totalItem.toString(),
          //                     style: GoogleFonts.alatsi(
          //                       color: Colors.white,
          //                       fontSize: 10.sp,
          //                     ),
          //                   ),
          //           ),
          //           child: Icon(
          //             Icons.shopping_cart,
          //             color: Colors.white,
          //           ),
          //         ),
          //       )),
          // ),
        ],
        leading: InkWell(
            onTap: () {
              Get.back();
              // _homePageController.toggle(index);
              //Get.to(() => WalkTracking());
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            )),
      ),
      body: Obx(
        () => (_flashProductByIdController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _flashProductByIdController.flashproductbyid!.result!.isEmpty
                ? Center(
                    child: Text('No data'),
                  )

                ///TODO: here we can use layout builder and we can use stack under list view in flutter............
                : LayoutBuilder(
                    builder: (context, constraints) => SizedBox(
                      height: size.height,
                      child: ListView.builder(
                          //physics: NeverScrollableScrollPhysics(),
                          itemCount: _flashProductByIdController
                              .flashproductbyid!.result!.length,
                          itemBuilder: (BuildContext context, int mainIndex) {
                            return SizedBox(
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  // Column(
                                  //   crossAxisAlignment:
                                  //       CrossAxisAlignment.start,
                                  //   children: [
                                  //     SizedBox(
                                  //       height: 20.h,
                                  //     ),
                                  //
                                  //     ///name...............
                                  //     Padding(
                                  //       padding: EdgeInsets.symmetric(
                                  //           vertical: 0.h, horizontal: 4.w),
                                  //       child: Text(
                                  //         //'ghee',
                                  //         _flashProductByIdController
                                  //             .flashproductbyid!
                                  //             .result![index]
                                  //             .productName
                                  //             .toString(),
                                  //         style: TextStyle(
                                  //           color: Colors.white,
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 22.sp,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //
                                  //     ///price..............
                                  //     Padding(
                                  //       padding: EdgeInsets.symmetric(
                                  //           vertical: 6.h, horizontal: 4.w),
                                  //       child: Column(
                                  //         crossAxisAlignment:
                                  //             CrossAxisAlignment.start,
                                  //         children: [
                                  //           Text(
                                  //             'Price:',
                                  //             style: TextStyle(
                                  //               color: Colors.black,
                                  //               fontWeight: FontWeight.w600,
                                  //               fontSize: 11.sp,
                                  //             ),
                                  //           ),
                                  //           Text(
                                  //             '₹ ${_flashProductByIdController.flashproductbyid!.result![index].price.toString()}',
                                  //             style: TextStyle(
                                  //               color: Colors.black,
                                  //               fontWeight: FontWeight.bold,
                                  //               fontSize: 18.sp,
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  Positioned(
                                      top: size.height * 0.30,
                                      bottom: 2,
                                      //right: -1,
                                      //left: -1,
                                      child: Container(
                                        height: size.height * 5,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 6.h,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    ///todo: product name.........
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 0.h,
                                                              horizontal: 0.w),
                                                      child: Text(
                                                        //'ghee',
                                                        _flashProductByIdController
                                                            .flashproductbyid!
                                                            .result![mainIndex]
                                                            .productName
                                                            .toString(),
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .themecolors,
                                                          //Colors.yellow,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 19.sp,
                                                        ),
                                                      ),
                                                    ),

                                                    ///price..............
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 0.5.h,
                                                              horizontal: 0.w),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Price:',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      11.sp,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 5.w,
                                                              ),
                                                              Text(
                                                                //textHolder,

                                                                '₹ ${_flashProductByIdController.flashproductbyid!.result![mainIndex].finalPrice.toString()}',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      13.sp,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 2.w,
                                                              ),
                                                              Text(
                                                                '₹ ${_flashProductByIdController.flashproductbyid!.result![mainIndex].price.toString()}',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,

                                                                  fontSize:
                                                                      13.sp,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                  // decorationStyle:
                                                                  //     TextDecorationStyle.wavy,
                                                                  decorationColor:
                                                                      Colors
                                                                          .black,
                                                                  decorationThickness:
                                                                      2.85,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    ///weight...............
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      0.5.h,
                                                                  horizontal:
                                                                      0.w),
                                                          child: Text(
                                                            'Weight:',
                                                            style: TextStyle(
                                                              fontSize: 11.sp,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 0.0.h,
                                                        ),
                                                        Row(
                                                          children: [
                                                            InkWell(
                                                              onTap: () {
                                                                clickFunction;
                                                                // {
                                                                //   _flashProductByIdController
                                                                //       .flashproductbyid!
                                                                //       .result![
                                                                //           mainIndex]
                                                                //       .finalPrice1
                                                                //       .toString();
                                                                // }
                                                                // {
                                                                //   _flashProductByIdController
                                                                //       .flashproductbyid!
                                                                //       .result![
                                                                //           mainIndex]
                                                                //       .finalPrice1
                                                                //       .toString();
                                                                // }
                                                                // ;
                                                                print(Text);
                                                              },
                                                              child: Container(
                                                                height:
                                                                    size.height *
                                                                        0.04,
                                                                width:
                                                                    size.width *
                                                                        0.26,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  // color:
                                                                  //     Colors.green,
                                                                  gradient: MyTheme
                                                                      .gradient12,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Center(
                                                                  child: Text(
                                                                    '${_flashProductByIdController.flashproductbyid!.result![mainIndex].weight2}${_flashProductByIdController.flashproductbyid!.result![mainIndex].pkt2}',
                                                                    style:
                                                                        TextStyle(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      fontSize:
                                                                          8.sp,
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  size.width *
                                                                      0.02,
                                                            ),
                                                            Container(
                                                              height:
                                                                  size.height *
                                                                      0.04,
                                                              width:
                                                                  size.width *
                                                                      0.26,
                                                              decoration:
                                                                  BoxDecoration(
                                                                // color:
                                                                //     Colors.green,
                                                                gradient: MyTheme
                                                                    .gradient12,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '${_flashProductByIdController.flashproductbyid!.result![mainIndex].weight2}${_flashProductByIdController.flashproductbyid!.result![mainIndex].pkt2}',
                                                                  style:
                                                                      TextStyle(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    fontSize:
                                                                        8.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  size.width *
                                                                      0.02,
                                                            ),
                                                            Container(
                                                              height:
                                                                  size.height *
                                                                      0.04,
                                                              width:
                                                                  size.width *
                                                                      0.26,
                                                              decoration:
                                                                  BoxDecoration(
                                                                // color:
                                                                //     Colors.green,
                                                                gradient: MyTheme
                                                                    .gradient12,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '${_flashProductByIdController.flashproductbyid!.result![mainIndex].weight3}${_flashProductByIdController.flashproductbyid!.result![mainIndex].pkt3}',
                                                                  style:
                                                                      TextStyle(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    fontSize:
                                                                        8.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: size.height *
                                                              0.01,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height:
                                                                  size.height *
                                                                      0.04,
                                                              width:
                                                                  size.width *
                                                                      0.26,
                                                              decoration:
                                                                  BoxDecoration(
                                                                // color:
                                                                //     Colors.green,
                                                                gradient: MyTheme
                                                                    .gradient12,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '${_flashProductByIdController.flashproductbyid!.result![mainIndex].weight4}${_flashProductByIdController.flashproductbyid!.result![mainIndex].pkt4}',
                                                                  style:
                                                                      TextStyle(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    fontSize:
                                                                        8.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  size.width *
                                                                      0.02,
                                                            ),
                                                            Container(
                                                              height:
                                                                  size.height *
                                                                      0.04,
                                                              width:
                                                                  size.width *
                                                                      0.26,
                                                              decoration:
                                                                  BoxDecoration(
                                                                // color:
                                                                //     Colors.green,
                                                                gradient: MyTheme
                                                                    .gradient12,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '${_flashProductByIdController.flashproductbyid!.result![mainIndex].weight5}${_flashProductByIdController.flashproductbyid!.result![mainIndex].pkt5}',
                                                                  style:
                                                                      TextStyle(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    fontSize:
                                                                        8.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(
                                                  height: 0.1.h,

                                                  ///TODO: here we have rating view............
                                                  // child: Row(
                                                  //   mainAxisAlignment:
                                                  //       MainAxisAlignment.start,
                                                  //   crossAxisAlignment:
                                                  //       CrossAxisAlignment.center,
                                                  //   children: [
                                                  //     Padding(
                                                  //       padding:
                                                  //           const EdgeInsets.all(
                                                  //               2.0),
                                                  //       child: Text(
                                                  //         'Rating:',
                                                  //         style: TextStyle(
                                                  //           fontSize: 13.sp,
                                                  //           fontWeight:
                                                  //               FontWeight.bold,
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //     Padding(
                                                  //       padding:
                                                  //           EdgeInsets.symmetric(
                                                  //               vertical: 5,
                                                  //               horizontal: 2),
                                                  //       child: Text(
                                                  //         '5',
                                                  //         style: TextStyle(
                                                  //             color: Color(int
                                                  //                 .parse(Productss
                                                  //                     .products[
                                                  //                         index]
                                                  //                     .color
                                                  //                     .toString())),
                                                  //             fontSize: 13.sp,
                                                  //             fontWeight:
                                                  //                 FontWeight
                                                  //                     .w700),
                                                  //       ),
                                                  //     ),
                                                  //     Padding(
                                                  //       padding:
                                                  //           EdgeInsets.symmetric(
                                                  //               vertical: 5,
                                                  //               horizontal: 0),
                                                  //       child: Text(
                                                  //         '/',
                                                  //         style: TextStyle(
                                                  //             color: Color(int
                                                  //                 .parse(Productss
                                                  //                     .products[
                                                  //                         index]
                                                  //                     .color
                                                  //                     .toString())),
                                                  //             fontSize: 13.sp,
                                                  //             fontWeight:
                                                  //                 FontWeight
                                                  //                     .w400),
                                                  //       ),
                                                  //     ),
                                                  //     Padding(
                                                  //       padding:
                                                  //           EdgeInsets.symmetric(
                                                  //               vertical: 5,
                                                  //               horizontal: 2),
                                                  //       child: Text(
                                                  //         '4.1',
                                                  //         style: TextStyle(
                                                  //             color: Color(int
                                                  //                 .parse(Productss
                                                  //                     .products[
                                                  //                         index]
                                                  //                     .color
                                                  //                     .toString())),
                                                  //             fontSize: 13.sp,
                                                  //             fontWeight:
                                                  //                 FontWeight
                                                  //                     .w700),
                                                  //       ),
                                                  //     ),
                                                  //     Icon(
                                                  //       Icons.star,
                                                  //       color: Colors
                                                  //           .yellow.shade700,
                                                  //       size: 20,
                                                  //     )
                                                  //   ],
                                                  // ),
                                                ),
                                                SizedBox(
                                                  height: 0.3.h,
                                                ),

                                                ///details.................
                                                Text(
                                                  'Details:',
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.1.h,
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.14,
                                                  child: Text(
                                                    _flashProductByIdController
                                                        .flashproductbyid!
                                                        .result![mainIndex]
                                                        .productDescription
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 8,

                                                    //'This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once. This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once.This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once.This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once.',
                                                    style: TextStyle(
                                                      fontSize: 9.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),

                                  ///image.........................
                                  Positioned(
                                    top: 0.h,
                                    //left: size.width * 0.0,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(4),
                                      elevation: 0,
                                      child: Container(
                                        height: size.height * 0.38,
                                        width: size.width,
                                        child: CarouselSlider.builder(
                                          //enableAutoSlider= off;
                                          //scrollPhysics: NeverScrollableScrollPhysics(),
                                          key: _sliderKey1,

                                          //bool enableAutoSlider = false;

                                          //unlimitedMode: false,

                                          autoSliderTransitionTime:
                                              Duration(seconds: 2),
                                          autoSliderDelay: Duration(seconds: 5),
                                          //Duration autoSliderTransitionTime = const Duration(seconds: 2),
                                          slideBuilder: (index) {
                                            return Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  // image: DecorationImage(
                                                  //     image: NetworkImage(base +
                                                  //         '${_flashProductByIdController.flashproductbyid!.result![mainIndex].multipleImage![index].toString()}'),
                                                  //     fit: BoxFit.fill),
                                                  ),
                                              child: Container(
                                                height: size.height * 0.38,
                                                width: size.width,
                                                child: Image.network(
                                                  base +
                                                      '${_flashProductByIdController.flashproductbyid!.result![mainIndex].multipleImage![index].toString()}',
                                                  fit: BoxFit.fill,
                                                  errorBuilder: (context, error,
                                                      stackTrace) {
                                                    //if image not comming in catagary then we have to purchase

                                                    return Image.network(base +
                                                        '${_flashProductByIdController.flashproductbyid!.result![mainIndex].productImage.toString()}');
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                          slideTransform:
                                              ZoomOutSlideTransform(),
                                          slideIndicator:
                                              CircularSlideIndicator(
                                            indicatorBorderWidth: 2,
                                            indicatorRadius: 4,
                                            itemSpacing: 15,
                                            currentIndicatorColor: Colors.white,
                                            padding: EdgeInsets.only(bottom: 6),
                                          ),
                                          itemCount: _flashProductByIdController
                                              .flashproductbyid!
                                              .result![mainIndex]
                                              .multipleImage!
                                              .length,
                                          enableAutoSlider: false,
                                        ),
                                      ),

                                      // Container(
                                      //   height: size.height * 0.38,
                                      //   width: size.width,
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.orange,
                                      //     borderRadius:
                                      //         BorderRadius.circular(4),
                                      //     border:
                                      //         Border.all(color: Colors.green),
                                      //     image: DecorationImage(
                                      //       image: NetworkImage(
                                      //         base +
                                      //             '${_flashProductByIdController.flashproductbyid!.result![index].productImage.toString()}',
                                      //       ),
                                      //       fit: BoxFit.fill,
                                      //     ),
                                      //   ),
                                      //   // child: Image.asset(
                                      //   //   Productss.products[index].imageUrl,
                                      //   //   fit: BoxFit.cover,
                                      //   // ),
                                      // ),
                                    ),
                                  ),

                                  ///add product.................
                                  Positioned(
                                    bottom: 2.h,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              controller.addtocartApi(
                                                  _flashProductByIdController
                                                      .flashproductbyid!
                                                      .result![mainIndex]
                                                      .id);
                                              // cartController.addProduct(
                                              //     Productss
                                              //         .products[mainIndex]);
                                              //_cartNewController.addItemInCart(product);
                                              //_cartNewController.numOfItems.(product);
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  right: MyTheme.defaultPading),
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: AppColors.themecolors,
                                                // Color(int.parse(Productss
                                                //     .products[mainIndex].color
                                                //     .toString())),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                  color: AppColors.themecolors,
                                                  //Colors.blueAccent,
                                                  // Color(int.parse(
                                                  //     Productss
                                                  //         .products[mainIndex]
                                                  //         .color
                                                  //         .toString())),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.add_shopping_cart_sharp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 50,
                                            width: size.width * 0.7,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                _rozarPayController
                                                    .openCheckout();

                                                print('click');
                                              },
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          AppColors.themecolors
                                                          // Color(
                                                          //   int.parse(Colors.green).toString()
                                                          //     // int.parse(Productss
                                                          //     // .products[mainIndex]
                                                          //     // .color
                                                          //     // .toString())
                                                          // ),
                                                          )),
                                              child: Text(
                                                'Buy Now'.toUpperCase(),
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
      ),
    );
  }
}
