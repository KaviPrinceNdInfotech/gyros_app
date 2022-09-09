import 'package:get/get.dart';
import 'package:gyros_app/models/flash_sall_list_product_model.dart';
import 'package:gyros_app/services/api_provider.dart';

class FlashProductByIdController extends GetxController {
  RxBool isLoading = true.obs;
  String productid = '';

  FlashSellListProduct? flashproductbyid;

  void flashproductbyIdApi() async {
    isLoading(false);

    flashproductbyid =
        await ApiProvider.getproductdetails(productid.toString());
    if (flashproductbyid != null) {
      //Get.to(() => ItemDetailss());
      isLoading(false);

      //Get.to(()=>Container());
    }
  }

  @override
  void onInit() {
    //subcatidApi();
    super.onInit();
  }

  @override
  void onClose() {
    flashproductbyid = null;
    super.onClose();
  }

  @override
  void dispose() {
    flashproductbyid = null;
    super.dispose();
  }
}
