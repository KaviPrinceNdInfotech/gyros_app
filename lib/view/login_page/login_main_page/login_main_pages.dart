import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/constants/buttons/customs_buttons.dart';
import 'package:gyros_app/controllers/login_controllerss/login_controllerssss.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/forget_password/forget_passwords.dart';
import 'package:gyros_app/view/signup/signup_page.dart';
import 'package:sizer/sizer.dart';

class LoginMainPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passController = TextEditingController();
  NavController _navController = Get.find();
  LoginPageController _loginPageController = Get.find();

  LoginMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _loginPageController.loginFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              height: size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          //'https://images.unsplash.com/photo-1506368249639-73a05d6f6488?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
                          //'https://images.unsplash.com/photo-1616344091740-af6b6859bb01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGhvbmV5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60'
                          //'https://images.unsplash.com/photo-1555211652-5c6222f971bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60'
                          'https://images.unsplash.com/photo-1627154424678-0d3909874daa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhvbmV5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60'
                          //'https://images.unsplash.com/photo-1590779033100-9f60a05a013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
                          //'https://img.freepik.com/free-photo/fresh-vegetables-with-price-tags-shelf-grocery-store-supermarket_342744-1397.jpg?w=1800&t=st=1656765079~exp=1656765679~hmac=960f81d4a643d71d68c26c50e5b182ce5cee8ee12935b54cbf72f66ea89c3425'
                          //'https://images.unsplash.com/photo-1608686207856-001b95cf60ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80'
                          //'https://img.freepik.com/free-photo/woman-with-tablet-buying-healthy-food-supermarket-grocery-store_342744-1110.jpg?t=st=1656747606~exp=1656748206~hmac=cad4fcedf9befb2991319f1634acc32b038e0757fc8cb569c84777d87febd9be&w=1800'
                          // 'https://images.unsplash.com/photo-1579113800032-c38bd7635818?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
                          //'https://images.wallpapersden.com/image/download/las-vegas-night-hotel_Zmxtbm6UmZqaraWkpJRmbmdlrWZlbWU.jpg'
                          //'https://i.pinimg.com/originals/01/96/c1/0196c1f3432b1a2ebac601dadb7b92cd.jpg'
                          ),
                      fit: BoxFit.fitHeight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0.0.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('lib/assets/asset/guser_logo.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),

                  Text(
                    'Login With Your Email.',
                    style: GoogleFonts.actor(
                      color: Colors.white,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Text(
                      "Enter Your Email and start purchasing with Gyros.",
                      style: GoogleFonts.actor(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Lottie.asset(
                  //   'lib/assets/asset/76899-delivery-grocery-and-food.json',
                  //   height: size.height * 0.4,
                  //   width: size.width * 0.9,
                  //   //repeat: false,
                  //   //reverse: false,
                  //   //animate: false,
                  // ),
                  SizedBox(
                    height: 6.h,
                  ),

                  ///todo from here email....

                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.13,
                    margin: EdgeInsets.symmetric(vertical: 0),
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                    decoration: BoxDecoration(
                      //color: MyTheme.loginPageBoxColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: MyTheme.ThemeColors,
                      ),
                      cursorColor: MyTheme.ThemeColors,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 3,
                            color: MyTheme.ThemeColors,
                          ),
                        ),
                        errorStyle: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w700),
                        //border: InputBorder.none,
                        fillColor: MyTheme.loginPageBoxColor,
                        filled: true,
                        focusColor: MyTheme.loginPageBoxColor,
                        border: OutlineInputBorder(
                          //borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: MyTheme.ThemeColors),
                        ),
                        //labelText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: MyTheme.ThemeColors,
                        ),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(color: MyTheme.ThemeColors),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: _loginPageController.emailController,
                      onSaved: (value) {
                        _loginPageController.email = value!;
                      },
                      validator: (value) {
                        return _loginPageController.validateEmail(value!);
                      },
                    ),
                  ),

                  SizedBox(
                    height: 0.h,
                  ),

                  ///here from password.......

                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.13,
                    margin: EdgeInsets.symmetric(vertical: 2),
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 0),
                    decoration: BoxDecoration(
                      //color: MyTheme.loginPageBoxColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Obx(
                      () => TextFormField(
                        //keyboardType: TextInputType.visiblePassword,
                        //obscureText: true,
                        obscureText: _loginPageController.isVisible.value,
                        controller: _loginPageController.passwordController,
                        style: TextStyle(
                          color: MyTheme.ThemeColors,
                        ),
                        cursorColor: MyTheme.ThemeColors,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 3,
                              color: MyTheme.ThemeColors,
                            ),
                          ),
                          errorStyle: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w700),
                          //border: InputBorder.none,
                          fillColor: MyTheme.loginPageBoxColor,
                          filled: true,
                          focusColor: MyTheme.loginPageBoxColor,
                          border: OutlineInputBorder(
                            //borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 2, color: MyTheme.ThemeColors),
                          ),
                          //labelText: "Email",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyTheme.ThemeColors,
                          ),

                          suffixIcon: IconButton(
                            icon: Icon(
                              _loginPageController.isVisible.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            color: MyTheme.ThemeColors,
                            onPressed: () {
                              _loginPageController.isVisible.value =
                                  !_loginPageController.isVisible.value;
                              print('hello prefix');
                              //TODO : will use getx here.............
                            },
                          ),

                          hintText: 'Enter Your Password',
                          hintStyle: TextStyle(color: MyTheme.ThemeColors),
                        ),
                        onSaved: (value) {
                          _loginPageController.password = value!;
                        },
                        // onChanged: (value) {
                        //   onUserPassValueChange(value);
                        // },
                        //
                        // onUserPassValueChange: (value) {
                        //   print('Pass Value $value');
                        // },
                        validator: (value) {
                          return _loginPageController.validatePassword(value!);
                        },
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 0.h,
                  ),

                  CustomButtom(
                    buttonColor: MyTheme.loginbuttonColor,
                    buttontext: 'LOGIN',
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    handleButtonClick: () {
                      _loginPageController.checkLogin();
                      _navController.tabindex(0);
                      Get.to(() => NavBar());
                      //Get.to(() => NavBar());
                    },
                  ),
                  SizedBox(
                    height: 1.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => Forgetpasswords());
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            //background: AppColors.themecolors,
                            //backgroundColor: Colors.grey.shade700,
                            color: AppColors.themecolors,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Don\'t have account ?',
                        style: TextStyle(
                          //backgroundColor: Colors.grey.shade700,
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SignUp());
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                            //backgroundColor: Colors.grey.shade700,
                            color: AppColors.themecolors,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Container(
                  //     height: 6.h,
                  //     width: 65.w,
                  //     decoration: BoxDecoration(
                  //       border:
                  //           Border.all(color: AppColors.themecolors, width: 1),
                  //     ),
                  //     child: Center(
                  //       child: TextField(
                  //         cursorColor: AppColors.themecolors,
                  //         style: TextStyle(
                  //             color: AppColors.themecolors, fontSize: 10.sp),
                  //         decoration: InputDecoration(
                  //           fillColor: Colors.grey.shade200,
                  //           contentPadding: EdgeInsets.symmetric(
                  //               vertical: 1.7.h, horizontal: 2.w),
                  //           // border: OutlineInputBorder(
                  //           //     borderRadius: BorderRadius.circular(0),
                  //           //     borderSide: BorderSide(
                  //           //       color: Colors.red,
                  //           //       width: 1,
                  //           //     )),
                  //           hintText: 'Name',
                  //           hintStyle: TextStyle(
                  //               color: Colors.grey,
                  //               fontSize: 10.sp,
                  //               fontWeight: FontWeight.w500),
                  //
                  //           disabledBorder: InputBorder.none,
                  //           border: InputBorder.none,
                  //           filled: true,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 2.h,
                  // ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Container(
                  //     height: 6.h,
                  //     width: 65.w,
                  //     decoration: BoxDecoration(
                  //       border:
                  //           Border.all(color: AppColors.themecolors, width: 1),
                  //     ),
                  //     child: Center(
                  //       child: TextField(
                  //         obscureText: true,
                  //         cursorColor: AppColors.themecolors,
                  //         style: TextStyle(
                  //             color: AppColors.themecolors, fontSize: 10.sp),
                  //         decoration: InputDecoration(
                  //           fillColor: Colors.grey.shade200,
                  //           contentPadding: EdgeInsets.symmetric(
                  //               vertical: 1.7.h, horizontal: 2.w),
                  //           // border: OutlineInputBorder(
                  //           //     borderRadius: BorderRadius.circular(0),
                  //           //     borderSide: BorderSide(
                  //           //       color: Colors.red,
                  //           //       width: 1,
                  //           //     )),
                  //           hintText: 'Password',
                  //           hintStyle: TextStyle(
                  //               color: Colors.grey,
                  //               fontSize: 10.sp,
                  //               fontWeight: FontWeight.w500),
                  //
                  //           disabledBorder: InputBorder.none,
                  //           border: InputBorder.none,
                  //           filled: true,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 5.h,
                  // ),
                  // InkWell(
                  //   onTap: () {
                  //     // Get.to(() => HomePage());
                  //   },
                  //   child: Container(
                  //       height: 6.h,
                  //       width: 65.w,
                  //       decoration: BoxDecoration(
                  //         border: Border.all(
                  //             color: AppColors.themecolors, width: 1),
                  //         color: AppColors.themecolors,
                  //       ),
                  //       child: Center(
                  //         child: Text(
                  //           'Login',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 10.sp,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       )),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
