import 'package:get/state_manager.dart';
import 'package:gyros_app/models/product_model.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 2));
    var productResult = [
      Product(
          id: 1,
          price: 400,
          productDescription: 'Pure Ghee',
          productImage: 'lib/assets/asset/guser_logo.png',
          productName: 'Ghee'),
      Product(
          id: 2,
          price: 100,
          productDescription: 'Mustard oil',
          productImage: 'lib/assets/asset/cook_gyros.png',
          productName: 'Oil'),
      Product(
          id: 3,
          price: 60.50,
          productDescription: 'Fresh Fruits',
          productImage: 'lib/assets/asset/order_gyros.png',
          productName: 'Fruits'),
      Product(
          id: 4,
          price: 40,
          productDescription: 'Fresh potatos',
          productImage: 'lib/assets/asset/guser_logo.png',
          productName: 'Vegetables'),
      Product(
          id: 5,
          price: 800000,
          productDescription: 'Fresh Honey',
          productImage: 'lib/assets/asset/guser_logo.png',
          productName: 'Honey'),
      Product(
          id: 6,
          price: 30,
          productDescription: 'Full cream curd',
          productImage: 'lib/assets/asset/guser_logo.png',
          productName: 'Curd'),
    ];

    products.value = productResult;
  }
}
