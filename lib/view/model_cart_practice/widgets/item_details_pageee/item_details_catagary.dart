import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/rozar_pay_controller/rozar_pay_controller.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/model_cart_practice/controllers/cart_controllersss.dart';
import 'package:gyros_app/view/model_cart_practice/procucts_cart_modelss.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/cart_product2.dart';
import 'package:sizer/sizer.dart';

class ItemDetailss extends StatelessWidget {
  final CartController controller = Get.put(CartController());
  final RozarPayController _rozarPayController = Get.find();
  final cartController = Get.put(CartController());
  final int index;
  ItemDetailss(
      {Key? key,
      required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.imageUrl,
      required this.description,
      required this.color,
      required this.index})
      : super(key: key);

  final String name;
  final double price;
  final String weight;
  final String imageUrl;
  final String description;
  final String color;
  final String id;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:
          Color(int.parse(Productss.products[index].color.toString())),
      appBar: AppBar(
        centerTitle: true,
        //Productss.products[index].weight
        backgroundColor:
            Color(int.parse(Productss.products[index].color.toString())),
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
                  child: Obx(
                    () => Badge(
                      toAnimate: false,
                      badgeColor: AppColors.themecolors,
                      badgeContent: Text(
                        controller.count.toString(),
                        style: GoogleFonts.alatsi(
                          color: Colors.white,
                          fontSize: 10.sp,
                        ),
                      ),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ),
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
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 4.w),
                child: Text(
                  //'ghee',
                  Productss.products[index].name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                    ),
                    Text(
                      '₹ ${Productss.products[index].price}',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: size.height * 0.30,
              bottom: 0,
              //right: -1,
              //left: -1,
              child: Container(
                height: size.height * 5,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${Productss.products[index].weight}gm',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        Productss.products[index].descriptions,
                        //'This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once. This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once.This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once.This is the Gyros product it will be fine for you if you want to purchase food through online mood and it is so fresh product and you can try it once.',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            top: 12.h,
            left: size.width * 0.48,
            child: Material(
              elevation: 7,
              child: Container(
                height: size.height * 0.22,
                width: size.width * 0.44,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: AssetImage(Productss.products[index].imageUrl),
                      fit: BoxFit.cover),
                ),
                child: Image.asset(
                  Productss.products[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 2.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      cartController.addProduct(Productss.products[index]);
                      //_cartNewController.addItemInCart(product);
                      //_cartNewController.numOfItems.(product);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: MyTheme.defaultPading),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(int.parse(
                            Productss.products[index].color.toString())),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(int.parse(
                              Productss.products[index].color.toString())),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                        _rozarPayController.openCheckout();
                        print('click');
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Color(int.parse(
                                Productss.products[index].color.toString())),
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
  }
}
