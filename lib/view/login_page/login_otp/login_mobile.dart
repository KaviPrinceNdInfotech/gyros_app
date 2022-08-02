import 'package:flutter/material.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/view/custom_widgets/my_theme.dart';
import 'package:gyros_app/view/login_page/login_otp/login_with_otp.dart';
import 'package:gyros_app/widgets/text_field_decorator.dart';
import 'package:gyros_app/widgets/user_mobile_textfield.dart';
import 'package:sizer/sizer.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);
  //final _formkeys = GlobalKey<FormState>();

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _formkeyphone = GlobalKey<FormState>();
    TextEditingController mobileController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: Form(
        //key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1564417947365-8dbc9d0e718e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG9yZ2FuaWMlMjBmYXJtaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60'),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 30,
                          color: AppColors.themecolors,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'lib/assets/asset/guser_logo.png',
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Login With Mobile',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add your phone number. we'll send you a verification code so we know you're real",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      height: size.height * 0.3,
                      padding: EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1641806120672-643a30aeda7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJsdXJyJTIwYmFjZ3JvdW5kJTIwZ3JlZW58ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60'
                                // 'https://images.unsplash.com/photo-1492892132812-a00a8b245c45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGJsdXJyJTIwYmFja2dyb3VuZCUyMGluJTIwb3JnYW5pYyUyMGRlYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60'
                                // 'https://images.unsplash.com/photo-1653585759494-c5582e011cfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJsdXIlMjBpbWFnZSUyMG5hdHVyZSUyMGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60'
                                //'https://images.unsplash.com/photo-1529480852540-6dd8e89ea2d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXw1Mjg2MDN8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'
                                //'https://images.unsplash.com/photo-1532190761747-215949f288d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJsdXIlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60'),
                                ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          TextFieldDecorator(
                            child: UserMobileTextField(
                              key: _formkeyphone,

                              // useridTextFieldPrefixicon
                              userMobileController: mobileController,
                              userMobileErrorText: 'Phone Can not found',
                              userMobileHintText: 'Enter Phone Number',
                              userMobileHintTextColor: AppColors.themecolors,
                              userMobileErrorTextColor: AppColors.themecolors,
                              userMobileTextFieldPrefixIcon: '+91',
                              userMobileTextFieldPrefixIconColor:
                                  AppColors.themecolors,

                              onUserMobileValueChange: (value) {},
                            ),
                          ),
                          // SizedBox(
                          //   height: 0.h,
                          // ),
                          // TextFormField(
                          //   keyboardType: TextInputType.number,
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          //   decoration: InputDecoration(
                          //     enabledBorder: OutlineInputBorder(
                          //         borderSide: BorderSide(color: Colors.black12),
                          //         borderRadius: BorderRadius.circular(10)),
                          //     focusedBorder: OutlineInputBorder(
                          //         borderSide: BorderSide(color: Colors.black12),
                          //         borderRadius: BorderRadius.circular(10)),
                          //     prefix: Padding(
                          //       padding: EdgeInsets.symmetric(horizontal: 8),
                          //       child: Text(
                          //         '+91 ',
                          //         style: TextStyle(
                          //           fontSize: 18,
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //       ),
                          //     ),
                          //     // suffixIcon: Icon(
                          //     //   Icons.check_circle,
                          //     //   color: Colors.green,
                          //     //   size: 32,
                          //     // ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 22,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: MyTheme.loginbuttonColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: ElevatedButton(
                              key: _formkeyphone,
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Otp()),
                                );
                              },
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Text(
                                  'Send',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
