import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../view/cart_new_section/product_details/product_detail_controllerss/cart_new_controler.dart';
import '../../view/cart_new_section/product_details/product_detail_controllerss/fav_counter_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(CartNewController());
    Get.put(FavCounterController());
  }

  // CartNewController _cartNewController = Get.put(CartNewController());
  // FavCounterController _favCounterController = Get.put(FavCounterController());

}
