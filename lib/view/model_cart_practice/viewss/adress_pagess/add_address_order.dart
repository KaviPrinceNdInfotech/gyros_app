import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/model_cart_practice/viewss/adress_pagess/address_list/address_listss.dart';
import 'package:sizer/sizer.dart';

import 'address_controllers.dart';

class AddAddress extends StatelessWidget {
  AddAddress({Key? key}) : super(key: key);

  AddAddressController _addAddressController = Get.put(AddAddressController());

  FocusNode myFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Add Address',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.themecolors,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1628444756989-ea3f47c0ebb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
                  //'https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
                  //'https://images.unsplash.com/photo-1623944653453-307cf0d6057c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
                  ),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.Name,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.9.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: 'Full Name',
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.grey.shade200),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.Mobile,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.9.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.phone_android_outlined,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: "Mobile Number",
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.red),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.State,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.8.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.my_location_rounded,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: "Enter State",
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.red),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.City,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.8.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.location_city,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: "Enter City",
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.red),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.Area,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.9.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.home_work,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: "Enter Area",
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.red),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.Building,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.9.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.home,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: "Enter Home",
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.red),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Container(
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(splashColor: Colors.transparent),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 14, color: MyTheme.ThemeColors),
                      cursorColor: MyTheme.ThemeColors,
                      cursorHeight: 2.h,
                      controller: _addAddressController.Pin,

                      //validator: _signupFormController.validateName,

                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1.9.h),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,

                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.pin_drop,
                            size: 18,
                            color: MyTheme.ThemeColors,
                          ),
                          // Image.asset(
                          //   'lib/assets/asset/user.png',
                          //   height: 2.h,
                          //   width: 4.w,
                          //   color: Colors.grey.shade400,
                          // ),
                        ),
                        //Icon(Icons.person,color: Colors.grey.shade700,),
                        hintText: "Enter Pin",
                        hintStyle: GoogleFonts.poppins(
                            color: MyTheme.ThemeColors,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                        labelStyle: TextStyle(
                            color: myFocusNode.hasFocus
                                ? Colors.blue
                                : Colors.red),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(8)),
                      color: Colors.grey.shade200),
                  width: 290,
                  height: 6.h,
                  //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                  //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Container(
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  color: MyTheme.loginbuttonColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  //key: _formkeyphones,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddressList()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Add Address',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
