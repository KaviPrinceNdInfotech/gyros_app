import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:gyros_app/controllers/rozar_pay_controller/rozar_pay_controller.dart';
import 'package:gyros_app/view/botttom_nav_bar/bottom_nav_bar_controller.dart';

import '../../view/cart_new_section/product_details/product_detail_controllerss/cart_new_controler.dart';
import '../../view/cart_new_section/product_details/product_detail_controllerss/fav_counter_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(CartNewController());
    Get.put(FavCounterController());
    Get.put(NavController());
    Get.put(RozarPayController());
  }

  // CartNewController _cartNewController = Get.put(CartNewController());
  // FavCounterController _favCounterController = Get.put(FavCounterController());

}
