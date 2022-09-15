import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:gyros_app/controllers/add_address_cotroller/add_adress_controller.dart';
import 'package:gyros_app/controllers/blog_list_controller.dart';
import 'package:gyros_app/controllers/forgot_email_code_controllers/forgot_email_cd_controllers.dart';
import 'package:gyros_app/controllers/gift_box_controller.dart';
import 'package:gyros_app/controllers/home_controllers/catagary_list_controller.dart';
import 'package:gyros_app/controllers/login_controllerss/login_controllerssss.dart';
import 'package:gyros_app/controllers/phone_login_controllerr/phone_login_controllers.dart';
import 'package:gyros_app/controllers/reset_password/reset_ps_email_controllers.dart';
import 'package:gyros_app/controllers/rozar_pay_controller/rozar_pay_controller.dart';
import 'package:gyros_app/controllers/set_new_password/set_new_pswd_controller.dart';
import 'package:gyros_app/controllers/sign_up_controller/sign_up_controllers.dart';
import 'package:gyros_app/controllers/sub_catagary_controllers/sub_cat_id_controllers.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:gyros_app/view/login_page/login_with_email/login_email_controller.dart';

import '../../view/cart_new_section/product_details/product_detail_controllerss/cart_new_controler.dart';
import '../../view/cart_new_section/product_details/product_detail_controllerss/fav_counter_controller.dart';
import '../../view/home_page/home_page_controller.dart';
import '../best_seller_controller.dart';
import '../otp_timer_controller/otp_timer_controllerss.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(CartNewController());
    Get.put(FavCounterController());
    Get.put(NavController());
    Get.put(RozarPayController());
    Get.put(LoginPageController());
    Get.put(SignUpPageController());
    Get.put(LoginMobileController());
    Get.put(AddAdressController());
    Get.put(ResetEmailController());
    Get.put(ForgotCodeController());
    Get.put(SetPasswordController());
    Get.put(CatagaryController());
    Get.put(HomePageController());
    Get.put(SubCatByIdController());
    Get.put(SubCatByIdController());
    Get.put(LoginEmailController());
    Get.lazyPut(() => OtpTimerController());
    Get.lazyPut(() => BlogListController());
    Get.lazyPut(() => GiftBoxController());
    Get.lazyPut(() => BestSellerController());

    //Get.put(CatagaryByIdController());
  }

  // CartNewController _cartNewController = Get.put(CartNewController());
  // FavCounterController _favCounterController = Get.put(FavCounterController());

}
