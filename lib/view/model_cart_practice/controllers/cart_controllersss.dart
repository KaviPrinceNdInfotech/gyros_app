import 'package:get/get.dart';
import 'package:gyros_app/models/list_of_cart_model_api.dart';
import 'package:gyros_app/services/api_provider.dart';
import 'package:gyros_app/view/model_cart_practice/procucts_cart_modelss.dart';

import '../../../controllers/flash_sale_product_by_id_controllers/flash_product_by_id_controller.dart';

class CartController extends GetxController {
  RxBool isLoading = true.obs;
  FlashProductByIdController _flashProductByIdController =
      Get.put(FlashProductByIdController());
  // add  a dict  to store the products in the cart .

  var _products = {}.obs;
  int get count => _products.length;

  ///implement through Api in cart list get.........

  CartListModel? cartListModel;

  void CartListgApi() async {
    isLoading(false);

    cartListModel = await ApiProvider.GetCartApi();
    if (cartListModel != null) {
      //Get.to(() => ItemDetailss());
      isLoading(false);

      //Get.to(()=>Container());
    }
  }

  @override
  void onInit() {
    CartListgApi();
    //categoryListssApi();

    super.onInit();
  }

  @override
  void dispose() {
    Get.delete<CartController>();
    super.dispose();
  }

  ///................................................

  void addProduct(Productss product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      "Product Added",
      "You have added the ${product.name} to the cart ",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  void removeProduct(Productss product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  //get products
  get products => _products;

  //get productSubtotal

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  //get total

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
