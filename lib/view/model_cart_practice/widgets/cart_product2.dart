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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              product.imageUrl,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(product.name),
          ),
          IconButton(
            onPressed: () {
              controller.removeProduct(product);
            },
            icon: Icon(Icons.remove_circle),
          ),
          Text('$quantity'),
          IconButton(
              onPressed: () {
                controller.addProduct(product);
              },
              icon: Icon(Icons.add_circle))
        ],
      ),
    );
  }
}
