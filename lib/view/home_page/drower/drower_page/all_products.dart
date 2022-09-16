import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/sub_catagary_controllers/sub_cat_id_controllers.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/home_page/home_page_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../model_cart_practice/controllers/cart_controllersss.dart';

class AllProducts extends StatelessWidget {
  AllProducts({Key? key}) : super(key: key);
  NavController _navController = Get.find();
  final CartController controller = Get.put(CartController());
  HomePageController _homePageController = Get.find();
  SubCatByIdController _subCatByIdController = Get.find();

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
      ),
      body: Obx(() => (_homePageController.isLoading.value == false)
          ? Container(
              height: size.height,
              width: double.infinity,
              color: Colors.white,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      _homePageController.getcatagartlist!.result!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: InkWell(
                        onTap: () {
                          _subCatByIdController.catid = _homePageController
                              .getcatagartlist!.result![index].id
                              .toString();
                          _subCatByIdController.subcatidApi();

                          // if (index == 0) {
                          //   Get.to(() => CowGhee());
                          // } else if (index == 1) {
                          //   Get.to(() => Oil());
                          // } else if (index == 2) {
                          //   Get.to(() => Honey());
                          // } else if (index == 3) {
                          //   Get.to(() => Jeggary());
                          // } else if (index == 4) {
                          //   Get.to(() => Spices());
                          // } else if (index == 5) {
                          //   Get.to(() => Sattu());
                          // } else if (index == 6) {
                          //   Get.to(() => Sweets());
                          // }
                        },
                        child: Container(
                          height: size.height * 0.25,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themecolors, width: 2),
                              image: DecorationImage(
                                image: NetworkImage(base +
                                    '${_homePageController.getcatagartlist!.result![index].imageName.toString()}'),
                                fit: BoxFit.cover,
                                // centerSlice: Rect.fromCenter(
                                //     center: Offset(200, 200),
                                //     width: 1,
                                //     height: 1),
                                onError:
                                    (Object exception, StackTrace? stackTrace) {
                                  Text('No Image');
                                  // Icon(
                                  //   Icons.error,
                                  //   color: Colors.red,
                                  // );
                                  print('onError');
                                  print('Exception: $exception');
                                  print('Stack Trace:\n$stackTrace');
                                },
                              )),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              _homePageController
                                  .getcatagartlist!.result![index].categoryName
                                  .toString(),
                              style: GoogleFonts.abhayaLibre(
                                backgroundColor: Colors.white70,
                                fontStyle: FontStyle.italic,
                                color: AppColors.themecolors,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          : Center(child: CircularProgressIndicator())),
    );
  }
}
