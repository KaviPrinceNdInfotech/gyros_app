import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/gift_box_controller.dart';
import 'package:gyros_app/controllers/rozar_pay_controller/rozar_pay_controller.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:sizer/sizer.dart';

class GiftBox extends StatelessWidget {
  GiftBox({Key? key}) : super(key: key);

  final RozarPayController _rozarPayController = Get.find();
  GiftBoxController _giftBoxController = Get.find();

  var height, width;

  @override
  Widget build(BuildContext context) {
    final List<String> text1 = [
      'New',
      'New',
      'BestSeller',
      'BestSeller',
      'New',
      'New',
      'BestSeller',
      'BestSeller',
    ];
    final List<String> text2 = [
      'Gift 1',
      'Gift 2',
      "Gift 3",
      'Gift 4',
      'Gift 5',
      'Gift 6',
      "Gift 7",
      'Gift 8',
    ];

    final List<String> image1 = [
      'lib/assets/asset/gft11.jpeg',
      'lib/assets/asset/gft33.jpeg',
      'lib/assets/asset/gft44.jpeg',
      'lib/assets/asset/gft66.jpeg',
      'lib/assets/asset/gft11.jpeg',
      'lib/assets/asset/gft33.jpeg',
      'lib/assets/asset/gft44.jpeg',
      'lib/assets/asset/gft66.jpeg',
    ];
    Size size = MediaQuery.of(context).size;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    var base = 'https://api.gyros.farm/Images/';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Gift Box',
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
      body: Obx(
        () => (_giftBoxController.isLoading.value)
            ? Center(child: CircularProgressIndicator())
            : _giftBoxController.giftcardModel!.result!.isEmpty
                ? Center(
                    child: Text('No data'),
                  )
                : Container(
                    height: size.height,
                    width: size.width,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.03,
                          width: size.width,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              'Buy from range of premium and healthy gift Box',
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                              shrinkWrap: true,
                              //physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: width / height * 0.35,
                                      mainAxisExtent: size.height * 0.25,
                                      crossAxisSpacing: 0,
                                      mainAxisSpacing: 0),
                              itemCount: _giftBoxController
                                  .giftcardModel!.result!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: InkWell(
                                    onTap: () {
                                      // _homePageController.toggle(index);
                                      if (index == 0) {
                                        //Get.to(() => ManPage());
                                        //Get.to(() => BestSeller());
                                        //Get.to(() => WaterTracking());
                                      } else if (index == 1) {
                                        //Get.to(() => ManPage());
                                      } else if (index == 2) {
                                        //Get.to(() => BestSeller());
                                        //Get.to(() => WalkTracking());
                                      } else if (index == 3) {
                                        //Get.to(() => WalkTracking());
                                      }
                                    },
                                    child: PhysicalModel(
                                      borderRadius: BorderRadius.circular(5),
                                      color: MyTheme.ThemeColors,
                                      elevation: 0.1,
                                      child: Container(
                                        height: size.height * 3,
                                        width: size.width * 0.4,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'lib/assets/asset/background1.jpeg',
                                              ),
                                              fit: BoxFit.fill),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color:
                                              MyTheme.ContainerUnSelectedColor,
                                        ),
                                        child: Column(
                                          //mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: 3.5.h,
                                                width: 22.w,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(5),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    )),
                                                child: Center(
                                                  child: Text(
                                                    _giftBoxController
                                                        .giftcardModel!
                                                        .result![index]
                                                        .title
                                                        .toString(),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 9.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 0.9.h,
                                            ),
                                            PhysicalModel(
                                              shadowColor: Colors.green,
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              elevation: 5,
                                              child: Container(
                                                height: size.height * 0.12,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  // border: Border.all(
                                                  //     color: AppColors.themecolors),
                                                  image: DecorationImage(
                                                      image: NetworkImage(base +
                                                          '${_giftBoxController.giftcardModel!.result![index].imageName.toString()}'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 1.1.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 1.7.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    _giftBoxController
                                                        .giftcardModel!
                                                        .result![index]
                                                        .name
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.sp,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Save ${_giftBoxController.giftcardModel!.result![index].discount}%',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10.sp,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Padding(
                                            //   padding:
                                            //       EdgeInsets.symmetric(horizontal: 2.w),
                                            //   child: Align(
                                            //     alignment: Alignment.centerLeft,
                                            //     child: Text(
                                            //       '',
                                            //       style: TextStyle(
                                            //         decoration: TextDecoration.lineThrough,
                                            //         fontWeight: FontWeight.w400,
                                            //         fontSize: 7.sp,
                                            //         color: Colors.white,
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            SizedBox(
                                              height: 0.5.h,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 23.w,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.w),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        SizedBox(
                                                          height: 1.h,
                                                        ),
                                                        Text(
                                                          '₹ ${_giftBoxController.giftcardModel!.result![index].price}',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 9.sp,
                                                            color: MyTheme
                                                                .loginbuttonColor,
                                                          ),
                                                        ),
                                                        // Text(
                                                        //   ' /500 gm',
                                                        //   style: TextStyle(
                                                        //     fontWeight: FontWeight.w800,
                                                        //     fontSize: 6.sp,
                                                        //     color: Colors.white,
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _rozarPayController
                                                        .openCheckout();
                                                  },
                                                  child: Container(
                                                    height: 3.h,
                                                    width: 22.9.w,
                                                    decoration: BoxDecoration(
                                                        color: MyTheme
                                                            .loginbuttonColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                        )),
                                                    child: Center(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Buy Now',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 8.sp,
                                                            ),
                                                          ),
                                                          // SizedBox(
                                                          //   width: 1.w,
                                                          // ),
                                                          // Icon(
                                                          //   Icons
                                                          //       .add_shopping_cart_outlined,
                                                          //   size: 13.sp,
                                                          //   color: Colors.redAccent,
                                                          // ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }
}
