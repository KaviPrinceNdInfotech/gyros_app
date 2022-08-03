import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/constants/buttons/customs_buttons.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_navbar.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/forget_password/forget_passwords.dart';
import 'package:gyros_app/view/signup/signup_page.dart';
import 'package:gyros_app/widgets/password_field.dart';
import 'package:gyros_app/widgets/text_field_decorator.dart';
import 'package:gyros_app/widgets/user_text_field.dart';
import 'package:sizer/sizer.dart';

class LoginMainPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passController = TextEditingController();
  NavController _navController = Get.find();

  // String userIdErrorText = 'User Id Can not found';
  // String userIdHinttext = 'Enter User Id';
  // Color UserIdHintTextColor = AppColors.themecolors;
  // IconData useridTextFieldPrefixicon = Icons.person;
  // Color userIdErrorTextColor = AppColors.themecolors;
  // Color useridTextFieldPrefixIconColor = AppColors.themecolors;
  LoginMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
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
                  // Lottie.asset(
                  //   'lib/assets/asset/76899-delivery-grocery-and-food.json',
                  //   height: size.height * 0.4,
                  //   width: size.width * 0.9,
                  //   //repeat: false,
                  //   //reverse: false,
                  //   //animate: false,
                  // ),
                  SizedBox(
                    height: 10.h,
                  ),

                  TextFieldDecorator(
                    child: UserIdTextField(
                      // useridTextFieldPrefixicon
                      useridController: useridController,
                      userIdErrorText: 'User Id Can not found',
                      userIdHintText: 'Enter User Id',
                      userIdHintTextColor: AppColors.themecolors,
                      userIdErrorTextColor: AppColors.themecolors,
                      useridTextFieldPrefixIcon: Icons.person,
                      useridTextFieldPrefixIconColor: AppColors.themecolors,

                      onUseridValueChange: (value) {},
                    ),
                  ),

                  SizedBox(
                    height: 0.h,
                  ),

                  TextFieldDecorator(
                    child: UserPassTextField(
                      // useridTextFieldPrefixicon
                      userPassController: passController,
                      userPassErrorText: 'passwordCan not be empty',
                      userPassHintText: 'Enter Password ',
                      userPassHintTextColor: AppColors.themecolors,
                      userPassErrorTextColor: AppColors.themecolors,
                      userPassTextFieldPrefixIcon: Icons.lock,

                      userPassTextFieldSufixIcon: Icons.visibility_off,
                      userPassTextFieldSufixIconColor: AppColors.themecolors,
                      userPassTextFieldPrefixIconColor: AppColors.themecolors,

                      onUserPassValueChange: (value) {
                        print('Pass Value $value');
                      },
                    ),
                  ),

                  SizedBox(
                    height: 1.h,
                  ),

                  CustomButtom(
                    buttonColor: MyTheme.loginbuttonColor,
                    buttontext: 'LOGIN',
                    textColor: Theme.of(context).colorScheme.onPrimary,
                    handleButtonClick: () {
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
