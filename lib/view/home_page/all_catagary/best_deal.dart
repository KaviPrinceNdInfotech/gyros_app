import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:sizer/sizer.dart';

class BestDeal extends StatelessWidget {
  const BestDeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> text1 = [
      'BestSeller',
      'BestSeller',
      'BestSeller',
      'BestSeller',
      'BestSeller',
      'BestSeller',
      'BestSeller',
      'BestSeller',
    ];
    final List<String> text2 = [
      'Sweets',
      'Ghee',
      "Spices",
      'Gaggery',
      'Honey',
      'Pulses',
      "Ghee",
      'Sweets',
    ];

    final List<String> image1 = [
      'lib/assets/asset/sweet4.png',
      'lib/assets/asset/gheee1.webp',
      'lib/assets/asset/spices3.jpeg',
      'lib/assets/asset/gaggery2.jpeg',
      'lib/assets/asset/honey2.jpeg',
      'lib/assets/asset/dal7.webp',
      'lib/assets/asset/sweet4.png',
      'lib/assets/asset/gheee1.webp',
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Best Deal',
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
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 3,
                      mainAxisExtent: 215,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemCount: text2.length,
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
                            height: size.height * 55,
                            width: size.width * 0.48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'lib/assets/asset/background4.jpeg',
                                  ),
                                  fit: BoxFit.fill),
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
                                        color: Colors.red,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(20),
                                        )),
                                    child: Center(
                                      child: Text(
                                        text1[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.6.h,
                                ),
                                PhysicalModel(
                                  shadowColor: Colors.green,
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                  elevation: 5,
                                  child: Container(
                                    height: size.height * 0.15,
                                    width: size.width * 0.32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      // border: Border.all(
                                      //     color: AppColors.themecolors),
                                      image: DecorationImage(
                                          image: AssetImage(image1[index]),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.7.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        text2[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11.sp,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Text(
                                        'Save 30%',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp,
                                          color: Colors.white,
                                        ),
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
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 7.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 23.w,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.w),
                                        child: Row(
                                          children: [
                                            Text(
                                              '₹ 30',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 8.sp,
                                                color: Colors.yellowAccent,
                                              ),
                                            ),
                                            Text(
                                              ' /500 gm',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 5.sp,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 3.3.h,
                                        width: 23.9.w,
                                        decoration: BoxDecoration(
                                            color: MyTheme.loginbuttonColor,
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                            )),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Add To Cart',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 1.w,
                                              ),
                                              Icon(
                                                Icons
                                                    .add_shopping_cart_outlined,
                                                size: 13.sp,
                                                color: Colors.redAccent,
                                              ),
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
    );
  }
}
