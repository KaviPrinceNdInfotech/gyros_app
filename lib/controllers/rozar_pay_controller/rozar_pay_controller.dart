import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyros_app/view/model_cart_practice/controllers/cart_controllersss.dart';
import 'package:gyros_app/view/order_confirmation_screens/order_confirmation.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RozarPayController extends GetxController {
  //get isLoading => null;

  RxBool isLoading = false.obs;
  final CartController controller = Get.put(CartController());

  @override
  void onInit() {
    super.onInit();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  late Razorpay _razorpay;

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_live_sTN4TNvGmEs3C1',
      // 'key': 'rzp_test_aeRns0u8gPpOUK',
      'amount':
          //500 * 100,
          controller.cartListModel.totalPrice,
      // 'Order_id':orderId,
      'name': 'Kumar Prince',
      'timeout': 60 * 5,
      'description': 'Do Payment',
      'prefill': {
        'contact': '970987889',
        'email': 'kumarprince261299@gmail.com'
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  // void handlerPaymentSuccess() {
  //   Get.to(Itemsbuy());
  // }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Get.snackbar("SUCCESS", "ID: ${response.paymentId}");

    Get.to(OrderConfirmationPage());
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Get.snackbar(
        "ERROR", "CODE: ${response.code}  MESSAGE:${response.message}");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Get.snackbar("EXTERNAL WALLET", "WALLET NAME: ${response.walletName}");
  }
}
