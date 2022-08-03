import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/home_page/search_screen.dart';
import 'package:sizer/sizer.dart';

class Blogss extends StatelessWidget {
  const Blogss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Gyros Blogs',
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
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      image: DecorationImage(
                          image: NetworkImage(
                              //'https://cdn.shopify.com/s/files/1/0270/3346/9006/articles/pexels-lucky-trips-2802368_1_1200x.jpg'
                              'https://images.unsplash.com/photo-1502086223501-7ea6ecd79368?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW5kaWFuJTIwZmxhZyUyMHdpdGglMjBjaGlsZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60'),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => SearchPage());
                              },
                              child: Container(
                                height: size.height * 0.05,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'Search',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.11,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              // height: size.height * 0.25,
                              //width: size.width * 0.5,
                              child: Text(
                                'Simple and \nTasty Healthy\n Recipes.',
                                style: GoogleFonts.abrilFatface(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Latest',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.37,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return SizedBox(
                          height: size.height * 0.4,
                          width: size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: size.height * 0.19,
                                  width: size.width * 0.4,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1593701461250-d7b22dfd3a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                                          fit: BoxFit.cover),
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  'Gyros farm',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.sp,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  'Gyros Sweets Rs.3.1 Cr in Sweets products.',
                                  style: GoogleFonts.acme(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Divider(),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 1.5.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Gyros Farm',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade800,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      'August 15, 2022',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 19),
                  child: Text(
                    'Gyros Blogs',
                    style: GoogleFonts.radioCanada(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height * 0.5,
                    width: size.width * 0.94,
                    decoration: BoxDecoration(
                      color: Color(0xfff5e1e1),
                      borderRadius: BorderRadius.circular(10),
                      //image: DecorationImage(image: NetworkImage(''))
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 0.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Gyros Raises Rs. 3.57 Cr in Spices Funding.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.h,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.46,
                              height: size.height * 0.4,
                              decoration: BoxDecoration(
                                  // color: Colors.green,
                                  ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: Text(
                                  """D2C healthy food brand Gyros Thursday said it raised Rs 3.67 crore in a seed round led by DSG Consumer Partners, along with Titan Capital and Anjali Bansal from Avaana Capital. Existing investors, including boAt Lifestyle and Beardo founders, also participated in the round.  Anveshan will use the funds to hire new talent and strengthen and standardise its manufacturing units.
It will also enhance its operational processes, improve quality
control parameters, and R&D of new products. ...""",
                                  style: GoogleFonts.arapey(
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Container(
                                width: size.width * 0.46,
                                height: size.height * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/file-1636585210491-f28ca34ea8ecimage'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  height: size.height * 0.99,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      //scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisExtent: 317,
                              mainAxisSpacing: 10),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return SizedBox(
                          height: size.height * 0.48,
                          width: size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: size.height * 0.22,
                                  width: size.width * 0.5,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1627154424678-0d3909874daa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhvbmV5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60'
                                              //'https://images.unsplash.com/photo-1593701461250-d7b22dfd3a77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
                                              ),
                                          fit: BoxFit.cover),
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  """Why are experts opposing mandatory food fortification by FSSAI?""",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  """Recently, FSSAI decided to mandate the fortification of rice and edible oils with vitamins and minerals. Through this, they plan to combat malnutrition in India. In response, a cohort of...""",
                                  style: GoogleFonts.acme(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Divider(),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 1.5.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Gyros Farm',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade800,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      'August 15, 2022',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
