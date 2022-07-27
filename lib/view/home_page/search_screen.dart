import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyros_app/constants/app_colors.dart';
import 'package:gyros_app/widgets/search_texfield_decoration.dart';
import 'package:gyros_app/widgets/search_textfield.dart';
import 'package:sizer/sizer.dart';

class SearchPage extends StatelessWidget {
  final _searchkeys = GlobalKey<FormState>();

  TextEditingController searchController = TextEditingController();
  SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _searchkeys,
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: SearchFieldDecorator(
                child: SearchTextField(
                  // useridTextFieldPrefixicon
                  useridController: searchController,

                  userIdErrorText: 'Please Search',
                  userIdHintText: 'Mangoes',

                  userIdHintTextColor: Colors.black,
                  userIdErrorTextColor: AppColors.themecolors,
                  useridTextFieldPrefixIcon: Icons.search,
                  useridTextFieldPrefixIconColor: AppColors.themecolors,

                  onUseridValueChange: (value) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
