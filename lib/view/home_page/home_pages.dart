import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/home_page/drower/drower.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/all_product_sub_catagary/honey_catagary.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/all_product_sub_catagary/oil_catagary.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/all_product_sub_catagary/vagitable_catagary.dart';
import 'package:gyros_app/view/home_page/drower/drower_page/all_products.dart';
import 'package:gyros_app/view/home_page/slider_crusial.dart';
import 'package:sizer/sizer.dart';

import 'all_catagary/best_deal.dart';
import 'drower/drower_page/all_product_sub_catagary/cow_ghee.dart';
import 'drower/drower_page/all_product_sub_catagary/fruits_catagary.dart';
import 'drower/drower_page/all_product_sub_catagary/jaggery_catagary.dart';
import 'drower/drower_page/all_product_sub_catagary/spices_catagary.dart';
import 'drower/drower_page/all_product_sub_catagary/sweets_catagary.dart';
import 'home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  HomePageController _homePageController = Get.put(HomePageController());
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  final List<String> images = [
    'https://wallpaperaccess.com/full/2792340.jpg',
    'https://wallpaperaccess.com/full/2792350.jpg',
    'https://wallpaperaccess.com/full/2792347.jpg',
    'https://wallpaperaccess.com/full/2792432.jpg',
    'https://wallpaperaccess.com/full/2614545.jpg',
    'https://wallpaperaccess.com/full/2792584.jpg',
    'https://wallpaperaccess.com/full/2792583.jpg',
    'https://wallpaperaccess.com/full/2792492.jpg',
  ];

  final List<String> images2 = [
    'https://img.icons8.com/external-bearicons-detailed-outline-bearicons/2x/external-All-miscellany-texts-and-badges-bearicons-detailed-outline-bearicons.png',
    'https://img.icons8.com/wired/2x/best-seller.png',
    'https://img.icons8.com/ios/2x/water-bottle.png',
    'https://img.icons8.com/dotty/2x/drop-of-blood.png',
    'https://img.icons8.com/external-sbts2018-lineal-color-sbts2018/2x/external-spices-cooking-sbts2018-lineal-color-sbts2018.png',
    'https://img.icons8.com/carbon-copy/344/honey.png',
    // 'https://img.icons8.com/external-bearicons-detailed-outline-bearicons/2x/external-All-miscellany-texts-and-badges-bearicons-detailed-outline-bearicons.png',
    'https://img.icons8.com/external-others-pike-picture/2x/external-Seeds-gardening-others-pike-picture-2.png',
    'https://img.icons8.com/external-vitaliy-gorbachev-lineal-vitaly-gorbachev/2x/external-leaf-ecology-vitaliy-gorbachev-lineal-vitaly-gorbachev.png',
    'https://img.icons8.com/ios/72/discount--v1.png',
    //'https://img.icons8.com/external-bearicons-detailed-outline-bearicons/2x/external-All-miscellany-texts-and-badges-bearicons-detailed-outline-bearicons.png',
    'https://img.icons8.com/external-kiranshastry-lineal-kiranshastry/2x/external-gift-box-ecommerce-kiranshastry-lineal-kiranshastry.png',
    'https://img.icons8.com/external-photo3ideastudio-lineal-photo3ideastudio/2x/external-fruits-restaurant-photo3ideastudio-lineal-photo3ideastudio.png',
    'https://img.icons8.com/external-justicon-lineal-justicon/2x/external-vegetables-healthy-food-and-vegan-justicon-lineal-justicon.png',
  ];

  final List<String> text1 = [
    'All',
    'Best deals',
    'Ghee',
    'Oil',
    'Spices',
    'Honey',
    'Seeds',
    'Superfoods',
    'Combos',
    'Gift Boxes',
    'Fruits',
    'Vegetables',
  ];
  final List<String> image1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiTsDT88bkQkAH1tQiuYRL3yactUGJy4qVZw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zdemwPYldWU6XsVGa2Ik_Bz5_1jtqJsP7A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrfScAJM3MU-f7T5SOMJ1muAuEqOZ-LEc9SVJDA3QFWKRq7AHJwtT1Xl081tBqoMJeDE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSM9HMCouNO87-gUHjQIkjBL8hPtnYUA1Hxg&usqp=CAU',
  ];

  final List<String> image2 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZFWvbpHgQ52duSVJbtvK3C2T2OfrCv8TN3g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDrYFTzUD-kkj18aNDkGKzt-ZVXWVusHViOQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjkQ7OvBH1-S-hFZGbc_kxXwgBjkrzDt7vHg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP1Ukf5MU84Wpni0y1-NIrKGOm-GXOBvqwjg&usqp=CAU',
  ];

  final List<String> text2 = [
    'Mangoes',
    'Oil',
    "cabage",
    'Honey',
  ];
  final List<String> text3 = [
    'Fruits',
    'Oil',
    "Vegetables",
    'Ghee',
  ];

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'lib/assets/asset/guser_logo.png',
          color: AppColors.themecolors,
          height: 14.h,
          width: 35.w,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Icon(
              Icons.shopping_cart,
              color: AppColors.themecolors,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Icon(
              Icons.search,
              color: AppColors.themecolors,
            ),
          ),
        ],
        // Text(
        //   'Gyrus',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 16.sp,
        //   ),
        // ),
        leading: InkWell(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: AppColors.themecolors,
            )),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: double.infinity,
              color: Colors.greenAccent,
              child: MySlider(),
            ),
            SizedBox(
              height: 33.5.h,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 5 / 2,
                      mainAxisExtent: 75,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemCount: text1.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Obx(
                      () => Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            _homePageController.toggle(index);
                            if (index == 0) {
                              Get.to(() => AllProducts());
                              //Get.to(() => BestSeller());
                              //Get.to(() => WaterTracking());
                            } else if (index == 1) {
                              Get.to(() => BestDeal());
                            } else if (index == 2) {
                              Get.to(() => CowGhee());
                              //Get.to(() => WalkTracking());
                            } else if (index == 3) {
                              Get.to(() => Oil());
                            } else if (index == 4) {
                              Get.to(() => Spices());
                              //Get.to(() => WalkTracking());
                            } else if (index == 5) {
                              Get.to(() => Honey());
                              //Get.to(() => WalkTracking());
                            } else if (index == 6) {
                              Get.to(() => Jeggary());
                              //Get.to(() => WalkTracking());
                            } else if (index == 7) {
                              Get.to(() => Sweets());
                              //Get.to(() => WalkTracking());
                            } else if (index == 8) {
                              //Get.to(() => WalkTracking());
                            } else if (index == 9) {
                              //Get.to(() => BestSeller());
                              //Get.to(() => WalkTracking());
                            } else if (index == 10) {
                              Get.to(() => Fruitsss());
                              //Get.to(() => BestSeller());
                              //Get.to(() => WalkTracking());
                            } else if (index == 11) {
                              Get.to(() => Vegitablesss());
                              //Get.to(() => WalkTracking());
                            }
                          },
                          child: PhysicalModel(
                            borderRadius: BorderRadius.circular(5),
                            color:
                                _homePageController.selectedIndex.value == index
                                    ? MyTheme.ThemeColors
                                    : Color(0xffeff8f5),
                            elevation: 0.1,
                            child: Container(
                              height: 10.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    _homePageController.selectedIndex.value ==
                                            index
                                        ? MyTheme.ThemeColors
                                        : Colors.white12,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(images2[index],
                                      height: size.height * 0.05,
                                      color: _homePageController
                                                  .selectedIndex.value ==
                                              index
                                          ? Colors.white
                                          : MyTheme.ThemeColors),
                                  Center(
                                      child: Text(
                                    text1[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8.sp,
                                        color: _homePageController
                                                    .selectedIndex.value ==
                                                index
                                            ? Colors.white
                                            : MyTheme.ThemeColors),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: size.height * 0.034,
                width: double.infinity,
                color: MyTheme.loginPageBoxColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text(
                    'Flash Sale',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: size.height * 0.29,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: text2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(
                        () => Padding(
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
                              } else if (index == 4) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 5) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 6) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 7) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 8) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 9) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 10) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 11) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              }
                            },
                            child: PhysicalModel(
                              borderRadius: BorderRadius.circular(5),
                              color: _homePageController.selectedIndex.value ==
                                      index
                                  ? MyTheme.ThemeColors
                                  : Color(0xffeff8f5),
                              elevation: 0.1,
                              child: Container(
                                height: 55.h,
                                width: size.width * 0.48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: MyTheme.ContainerUnSelectedColor,
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
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(20),
                                            )),
                                        child: Center(
                                          child: Text(
                                            'Best Saller',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Image.network(
                                      image1[index],
                                      height: size.height * 0.15,
                                      width: 26.w,
                                      //color: Colors.transparent
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            text2[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add_shopping_cart_outlined,
                                            size: 15.sp,
                                            color: Colors.redAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '₹ 50',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 7.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.w),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '₹ 30',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 8.sp,
                                                    color: MyTheme
                                                        .loginbuttonColor,
                                                  ),
                                                ),
                                                Text(
                                                  ' /500 gm',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 5.sp,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 3.5.h,
                                          width: 20.w,
                                          decoration: BoxDecoration(
                                              color: MyTheme.loginbuttonColor,
                                              borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                              )),
                                          child: Center(
                                            child: Text(
                                              'Save 3%',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 9.sp,
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
                        ),
                      );
                    })),
            SizedBox(
              height: 01.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: size.height * 0.034,
                width: double.infinity,
                color: MyTheme.loginPageBoxColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text(
                    'Purchase your first product',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: size.height * 0.15,
                //width: double.infinity,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(
                        () => InkWell(
                          onTap: () {
                            // _homePageController.toggle(index);
                            if (index == 0) {
                              //Get.to(() => ManPage());
                              //Get.to(() => BestSeller());
                              //Get.to(() => WaterTracking());
                            }
                          },
                          child: PhysicalModel(
                            borderRadius: BorderRadius.circular(0),
                            color:
                                _homePageController.selectedIndex.value == index
                                    ? MyTheme.ThemeColors
                                    : Color(0xffeff8f5),
                            elevation: 0.1,
                            child: Container(
                              height: 10.h,
                              width: 100.w, //size.width * 0.99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: MyTheme.ContainerUnSelectedColor,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://www.pngplay.com/wp-content/uploads/6/Coupon-Icon-Background-PNG-Image.png'),
                                    fit: BoxFit.fitWidth),
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
            SizedBox(
              height: 01.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: size.height * 0.034,
                width: double.infinity,
                color: MyTheme.loginPageBoxColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text(
                    'Our Products',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: size.height * 0.29,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: text3.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(
                        () => Padding(
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
                              } else if (index == 4) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 5) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 6) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 7) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 8) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 9) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 10) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              } else if (index == 11) {
                                //Get.to(() => BestSeller());
                                //Get.to(() => WalkTracking());
                              }
                            },
                            child: PhysicalModel(
                              borderRadius: BorderRadius.circular(5),
                              color: _homePageController.selectedIndex.value ==
                                      index
                                  ? MyTheme.ThemeColors
                                  : Color(0xffeff8f5),
                              elevation: 0.1,
                              child: Container(
                                height: 55.h,
                                width: size.width * 0.48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: MyTheme.ContainerUnSelectedColor,
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
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(20),
                                            )),
                                        child: Center(
                                          child: Text(
                                            'Best Saller',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Image.network(
                                      image2[index],
                                      width: 30.w,
                                      //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrfScAJM3MU-f7T5SOMJ1muAuEqOZ-LEc9SVJDA3QFWKRq7AHJwtT1Xl081tBqoMJeDE&usqp=CAU',
                                      height: size.height * 0.15,
                                      //color: Colors.transparent
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            text3[index],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add_shopping_cart_outlined,
                                            size: 15.sp,
                                            color: Colors.redAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '₹ 50',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 7.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.w),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '₹ 30',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 8.sp,
                                                    color: MyTheme
                                                        .loginbuttonColor,
                                                  ),
                                                ),
                                                Text(
                                                  ' /500 gm',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 5.sp,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 3.5.h,
                                          width: 20.w,
                                          decoration: BoxDecoration(
                                              color: MyTheme.loginbuttonColor,
                                              borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                              )),
                                          child: Center(
                                            child: Text(
                                              'Save 3%',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 9.sp,
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
                        ),
                      );
                    })),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: size.height * 0.034,
                width: double.infinity,
                color: MyTheme.loginPageBoxColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text(
                    'Our Offers',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: size.height * 0.2,
                //width: double.infinity,
                child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // _homePageController.toggle(index);
                          // if (index == 0) {
                          //   //Get.to(() => ManPage());
                          //   //Get.to(() => BestSeller());
                          //   //Get.to(() => WaterTracking());
                          // }
                        },
                        child: PhysicalModel(
                          borderRadius: BorderRadius.circular(0),
                          color: Color(0xffeff8f5),
                          elevation: 0.1,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 12.h,
                              width: 94.w, //size.width * 0.99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                // color: MyTheme.ContainerUnSelectedColor,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIeHgSTEFLx2PAxGUuvAqqdkdIMCon2BYqtQ&usqp=CAU'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
