import 'dart:convert';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/catagary_list_by_id/catagary_list_by_id.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/controllers/home_controllers/catagary_list_controller.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/home_page/drower/drower.dart';
import 'package:gyros_app/view/home_page/home_page_model/categoryModel.dart';
import 'package:gyros_app/view/home_page/home_page_model/our_offer_model.dart';
import 'package:gyros_app/view/home_page/search_screen.dart';
import 'package:gyros_app/view/home_page/slider_crusial.dart';
import 'package:gyros_app/view/model_cart_practice/controllers/cart_controllersss.dart';
import 'package:gyros_app/view/model_cart_practice/procucts_cart_modelss.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/cart_product2.dart';
import 'package:gyros_app/view/model_cart_practice/widgets/catalog_product.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

import 'home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final CartController controller = Get.put(CartController());
  HomePageController _homePageController = Get.put(HomePageController());
  // CatagaryByIdController _catagaryByIdController = Get.find();
  CatagaryController _catagaryController = Get.find();
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
    'https://img.icons8.com/carbon-copy/2x/pepitas.png',
    'https://img.icons8.com/ios/72/discount--v1.png',
    //'https://img.icons8.com/external-bearicons-detailed-outline-bearicons/2x/external-All-miscellany-texts-and-badges-bearicons-detailed-outline-bearicons.png',
    'https://img.icons8.com/external-kiranshastry-lineal-kiranshastry/2x/external-gift-box-ecommerce-kiranshastry-lineal-kiranshastry.png',
    'https://img.icons8.com/external-icongeek26-outline-icongeek26/2x/external-sweets-baking-and-bakery-icongeek26-outline-icongeek26.png',
    'https://img.icons8.com/external-icongeek26-outline-icongeek26/2x/external-Jaggery-pongal-icongeek26-outline-icongeek26.png',
  ];

  final List<String> text1 = [
    'All',
    'Best deals',
    'Ghee',
    'Oil',
    'Spices',
    'Honey',
    'Pulses',
    'Sattu',
    'Combos',
    'Gift Boxes',
    'Sweet',
    'Jaggery',
  ];
  final List<String> image1 = [
    'lib/assets/asset/ghee3.jpeg',
    'lib/assets/asset/oil_1.jpeg',
    'lib/assets/asset/spices4.webp',
    'lib/assets/asset/honey3.jpeg',
  ];

  final List<String> image2 = [
    'lib/assets/asset/ jagary3.jpeg',
    'lib/assets/asset/sattu2.jpeg',
    'lib/assets/asset/sweet4.jpeg',
    'lib/assets/asset/dal7.webp',
    'lib/assets/asset/ghee3.jpeg',
    'lib/assets/asset/oil_1.jpeg',
    'lib/assets/asset/spices4.webp',
    'lib/assets/asset/honey3.jpeg',
  ];

  final List<String> text2 = [
    'Ghee',
    'Oil',
    "Spices",
    'Honey',
  ];
  final List<String> text3 = [
    'Jaggery',
    "Sattu",
    'Sweet',
    'Pulse',
    'Ghee',
    'Oil',
    "Spices",
    'Honey',
  ];
  //product List..................................

  Future<List<Result>> getCategoryData() async {
    List<Result> list;

    var url = 'https://api.gyros.farm/api/AdminApi/ProductList';
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["result"] as List;
      list = rest.map<Result>((json) => Result.fromJson(json)).toList();
      print("List Size&&&&&&&&&&&&&&&Rahul: ${list}");
    } else {
      throw Exception('Failed to load data');
    }
    return list;
  }

  //our offers...........................................
  Future<List<ourOfferResult>> ourOfferData() async {
    List<ourOfferResult> list;
    var url = 'https://api.gyros.farm/api/AdminApi/PromotionImage';
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["result"] as List;
      list = rest
          .map<ourOfferResult>((json) => ourOfferResult.fromJson(json))
          .toList();
      print("List Size&&&&&&&&&&&&&&&Rahul: ${list}");
    } else {
      throw Exception('Failed to load data');
    }
    return list;
  }

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
            // color: AppColors.themecolors,
            height: 13.h,
            width: 35.w,
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
                          color: AppColors.themecolors,
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: InkWell(
                onTap: () {
                  Get.to(() => SearchPage());
                  //Get.to(() => ExploreView());
                },
                child: Icon(
                  Icons.search,
                  color: AppColors.themecolors,
                ),
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
              FutureBuilder<List<Result>>(
                  future: getCategoryData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var items = snapshot.data;
                      var base = 'https://api.gyros.farm/Images/';
                      return SizedBox(
                        // height: 33.5.h,
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio: 5 / 2,
                                    mainAxisExtent: 75,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 0),
                            itemCount: items?.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Obx(
                                () => Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      _homePageController.toggle(index);
                                      if (index == 0) {
                                        Get.to(() => CatagaryListSubcatagary());
                                        //Get.to(() => AllProducts());
                                        //Get.to(() => BestSeller());
                                        //Get.to(() => WaterTracking());
                                      } else if (index == 1) {
                                        Get.to(() => CatagaryListSubcatagary());
                                      } else if (index == 2) {
                                        Get.to(() => CatagaryListSubcatagary());
                                      } else if (index == 3) {
                                        Get.to(() => CatagaryListSubcatagary());
                                      }
                                      /*else if (index == 2) {
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
                                      Get.to(() => Pulses());
                                      //Get.to(() => WalkTracking());
                                    } else if (index == 7) {
                                      Get.to(() => Sattu());
                                      //Get.to(() => WalkTracking());
                                    } else if (index == 8) {
                                      Get.to(() => CupponsPage());
                                    } else if (index == 9) {
                                      Get.to(() => GiftBox());

                                        //Get.to(() => WalkTracking());
                                      } else if (index == 10) {
                                        Get.to(() => Sweets());
                                        //Get.to(() => BestSeller());
                                        //Get.to(() => WalkTracking());
                                      } else if (index == 11) {
                                        Get.to(() => Jeggary());
                                        //Get.to(() => WalkTracking());
                                      }*/
                                    },
                                    child: PhysicalModel(
                                      borderRadius: BorderRadius.circular(5),
                                      color: _homePageController
                                                  .selectedIndex.value ==
                                              index
                                          ? MyTheme.ThemeColors
                                          : Color(0xffeff8f5),
                                      elevation: 0.1,
                                      child: Container(
                                        height: 10.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: _homePageController
                                                      .selectedIndex.value ==
                                                  index
                                              ? MyTheme.ThemeColors
                                              : Colors.white12,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.network(
                                              base +
                                                  '${items![index].imageName.toString()}',
                                              fit: BoxFit.fill,
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                //if image not comming in catagary then we have to purchase

                                                return Icon(
                                                  Icons.error,
                                                  color: Colors.grey,
                                                );
                                              },

                                              height: size.height * 0.04,
                                              // color: _homePageController
                                              //             .selectedIndex
                                              //             .value ==
                                              //         index
                                              //     ? Colors.white
                                              //     : MyTheme.ThemeColors
                                            ),
                                            Center(
                                                child: Text(
                                              items[index]
                                                  .categoryName
                                                  .toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8.sp,
                                                  color: _homePageController
                                                              .selectedIndex
                                                              .value ==
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
                      );
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                    ));
                  }),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: size.height * 0.034,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: MyTheme.gradient2,
                  ),
                  //color: MyTheme.loginPageBoxColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.4.h),
                    child: Text(
                      'Flash Sale',
                      style: TextStyle(
                        color: Colors.white,

                        //color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w300,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Productss.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CatalogProductCart(index: index);
                      })),
              SizedBox(
                height: 01.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: size.height * 0.034,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: MyTheme.gradient2,
                  ),
                  //color: MyTheme.loginPageBoxColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.4.h),
                    child: Text(
                      'Purchase your first product',
                      style: TextStyle(
                        color: Colors.white,

                        //color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w300,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.19,
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
                              color: _homePageController.selectedIndex.value ==
                                      index
                                  ? MyTheme.ThemeColors
                                  : Color(0xffeff8f5),
                              elevation: 0.1,
                              child: Container(
                                height: 23.h,
                                width: 100.w, //size.width * 0.99,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: MyTheme.ContainerUnSelectedColor,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'lib/assets/asset/Organic.gif'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                        );
                      })),
              SizedBox(
                height: 0.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: size.height * 0.034,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: MyTheme.gradient2,
                  ),
                  //color: MyTheme.loginPageBoxColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.4.h),
                    child: Text(
                      'Our Products',
                      style: TextStyle(
                        color: Colors.white,

                        //color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w300,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Productss.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CatalogProductCart(index: index);
                      })),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: size.height * 0.034,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: MyTheme.gradient2,
                  ),
                  //color: MyTheme.loginPageBoxColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.4.h),
                    child: Text(
                      'Our Offers',
                      style: TextStyle(
                        color: Colors.white,
                        //color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w300,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ),
              ),
              FutureBuilder<List<ourOfferResult>>(
                  future: ourOfferData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      var items = snapshot.data;
                      var base = 'https://api.gyros.farm/Images/';
                      return SizedBox(
                          height: size.height * 0.2,
                          //width: double.infinity,
                          child: ListView.builder(
                              itemCount: items!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {},
                                  child: PhysicalModel(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Color(0xffeff8f5),
                                    elevation: 0.1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 15.h,
                                        width: 95.w, //size.width * 0.99,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          // color: MyTheme.ContainerUnSelectedColor,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              base +
                                                  '${items![index].promotionalBannerPath}',
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }));
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                    ));
                  })
            ],
          ),
        ));
  }
}
//Model

// ourOffers model
