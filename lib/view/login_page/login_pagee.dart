import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/constants/buttons/customs_buttons.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/login_page/login_main_page/login_main_pages.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.themecolors,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1579113800032-c38bd7635818?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
                      //'https://img.freepik.com/free-photo/woman-with-tablet-buying-healthy-food-supermarket-grocery-store_342744-1110.jpg?t=st=1656747606~exp=1656748206~hmac=cad4fcedf9befb2991319f1634acc32b038e0757fc8cb569c84777d87febd9be&w=1800'
                      //'https://images.unsplash.com/photo-1579113800032-c38bd7635818?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
                      //'https://images.wallpapersden.com/image/download/las-vegas-night-hotel_Zmxtbm6UmZqaraWkpJRmbmdlrWZlbWU.jpg'
                      //'https://i.pinimg.com/originals/01/96/c1/0196c1f3432b1a2ebac601dadb7b92cd.jpg'
                      ),
                  fit: BoxFit.fitHeight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 10.h,
              // ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height * 0.2,
                  width: size.width * 0.5,
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
                height: 30.h,
              ),

              CustomButtom(
                buttonColor: MyTheme.loginbuttonColor,
                buttontext: 'LOGIN',
                textColor: Theme.of(context).colorScheme.onPrimary,
                handleButtonClick: loginButtonClickHandler,
              ),

              SizedBox(
                height: 15,
              ),
              CustomButtom(
                buttonColor: MyTheme.signUpButtonColor,
                buttontext: 'SIGNUP',
                textColor: Theme.of(context).colorScheme.primary,
                handleButtonClick: signupButtonClickHandler,
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginButtonClickHandler() {
    print("Login Clicked");
    Get.to(LoginMainPage());
  }

  signupButtonClickHandler() {
    print("Signup Button Clicked");
  }
}
