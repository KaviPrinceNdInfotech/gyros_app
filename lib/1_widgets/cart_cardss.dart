import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyros_app/constants/shared_car_page_constant.dart';
import 'package:gyros_app/controllers/cart_controllers.dart';
import 'package:gyros_app/models/cart_model.dart';
import 'package:sizer/sizer.dart';

class CartCArd extends StatelessWidget {
  final CartController cartController = Get.find();
  final Cart product;
  final Function function1;
  final Function function2;

  CartCArd(
      {required this.product,
      required this.function1,
      required this.function2});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      padding: const EdgeInsets.only(left: 6, top: 10, bottom: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6),
            height: 82,
            width: 82,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: greyColor2),
            child: Center(
              child: Image.asset(product.product.productImage),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.product.productName,
                style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 25.w,
                height: 3.h,
                child: Text(product.product.productDescription,
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text('₹ ${product.product.price.toString()}')
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(6),
              height: 40,
              decoration: BoxDecoration(
                  color: greyColor2,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      function2;
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Center(
                          child: Text(
                        '-',
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 30,
                      width: 30,
                      child: GetBuilder<CartController>(builder: (controller) {
                        return Center(
                          child: Text(
                            product.qty.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      })),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      function1;
                      print('okpressdd');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      height: 30,
                      width: 30,
                      child: Center(
                          child: Text(
                        '+',
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
