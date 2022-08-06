import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/model_cart_practice/controllers/cart_controllersss.dart';
import 'package:gyros_app/view/model_cart_practice/procucts_cart_modelss.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/cart_total.dart';
import 'package:neopop/utils/color_utils.dart';
import 'package:neopop/utils/constants.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';
import 'package:sizer/sizer.dart';

class Cartproducts extends StatelessWidget {
  final CartController controller = Get.find();
  Cartproducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          'Cart Item',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.themecolors,
          ),
        ),
        centerTitle: true,
      ),
      // backgroundColor: Colors.black,
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.6,
                child: ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 0.5.h),
                        child: PhysicalModel(
                          color: Colors.grey,
                          elevation: 3,
                          shadowColor: Colors.teal,
                          child: Container(
                            height: 14.h,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                            ),
                            child: CartProductCard(
                              controller: controller,
                              product: controller.products.keys.toList()[index],
                              quantity:
                                  controller.products.values.toList()[index],
                              index: index,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Container(
                  height: size.height * 0.17,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade100,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Item',
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.teal),
                            ),
                            Container(
                              height: 4.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: MyTheme.gradient3,
                              ),
                              child: Center(
                                child: Text(
                                  controller.count.toString(),
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '₹${controller.total}',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.red.shade400,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                  child: NeoPopButton(
                    topShadowColor: Colors.green,
                    leftShadowColor: Colors.green,
                    color: Colors.black,
                    bottomShadowColor:
                        ColorUtils.getVerticalShadow(Colors.green).toColor(),
                    rightShadowColor:
                        ColorUtils.getHorizontalShadow(Colors.green).toColor(),
                    animationDuration: const Duration(milliseconds: 200),
                    depth: kButtonDepth,
                    onTapUp: () {
                      Get.to(() => TotalPrice());
                    },
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("CONFIRM",
                              style: GoogleFonts.poppins(
                                color: MyTheme.ThemeColors,
                                fontSize: 13,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Productss product;
  final int quantity;
  final int index;
  const CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PhysicalModel(
            shadowColor: Colors.green,
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
            elevation: 8,
            child: Container(
              height: size.height * 0.18,
              width: size.width * 0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // border: Border.all(
                //     color: AppColors.themecolors),
                image: DecorationImage(
                    image: AssetImage(product.imageUrl), fit: BoxFit.cover),
              ),
            ),
          ),
          // CircleAvatar(
          //   radius: 40,
          //   backgroundImage: AssetImage(
          //     product.imageUrl,
          //   ),
          // ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.anekBangla(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 13.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "₹${product.price.toString()}",
                      style: GoogleFonts.anekBangla(
                        color: Colors.yellowAccent.shade100,
                        fontSize: 11.sp,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "/${product.weight.toString()}gm",
                      style: GoogleFonts.anekBangla(
                        color: Colors.grey.shade800,
                        letterSpacing: 1,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            height: 4.h,
            width: 26.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: NeoPopButton(
                    color: Colors.grey,
                    bottomShadowColor: Colors.black12,
                    //buttonPosition: Position.fullBottom,
                    depth: 2,
                    onTapUp: () {
                      controller.removeProduct(product);
                    },
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.remove_circle_outline,
                        size: 20,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                  child: PhysicalModel(
                    elevation: 7,
                    color: Colors.white,
                    shadowColor: Colors.green,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 4.h,
                      width: 7.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Text(
                          '$quantity',
                          style: GoogleFonts.anekBangla(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: NeoPopButton(
                    color: Colors.grey,
                    bottomShadowColor: Colors.green,
                    rightShadowColor: Colors.green,
                    //buttonPosition: Position.fullBottom,
                    depth: 2,
                    onTapUp: () {
                      controller.addProduct(product);
                    },
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                    child: const Center(
                      child: Icon(Icons.add_circle_outline_sharp,
                          size: 20, color: Colors.greenAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // IconButton(x
          //   onPressed: () {
          //     controller.removeProduct(product);
          //   },
          //   icon: Icon(Icons.remove_circle),
          // ),
          // Text('$quantity'),
          // IconButton(
          //     onPressed: () {
          //       controller.addProduct(product);
          //     },
          //     icon: Icon(Icons.add_circle))
        ],
      ),
    );
  }
}
