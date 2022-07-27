import 'package:flutter/material.dart';
import 'package:gyros_app/cart_modell/product_model.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:sizer/sizer.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    Key? key,
    required this.currentProduct,
    required this.cardClickHandler,
  }) : super(key: key);

  final ProductModel currentProduct;
  final Function cardClickHandler;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        cardClickHandler();
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: size.width * 0.4,
              width: size.width * 0.4,
              padding: EdgeInsets.all(MyTheme.defaultPading),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                //color: Colors.green,
                color:
                    //Color(currentProduct.color.toString()!)
                    Color(int.parse(currentProduct.color!)),
              ),
              child: Hero(
                  tag: currentProduct.id.toString(),
                  child: Image.asset(currentProduct.image.toString())),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MyTheme.defaultPading,
                  horizontal: MyTheme.defaultPading),
              child: Text(
                currentProduct.name.toString(),
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 3.w),
              child: Text(
                " ₹ ${currentProduct.price.toString()}",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
