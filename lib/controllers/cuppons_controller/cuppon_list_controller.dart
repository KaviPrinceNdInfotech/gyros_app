import 'package:get/get.dart';
import 'package:gyros_app/models/cuppons/cuppon_list_model.dart';
import 'package:gyros_app/services/api_provider.dart';

class CupponListController extends GetxController {
  RxBool isLoading = true.obs;

  CupponModel? cupponModel;

  void cupponlistApi() async {
    isLoading(false);

    cupponModel = await ApiProvider.CupponListApi();
    if (cupponModel?.result != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);

      //Get.to(()=>Container());
    }
  }

  @override
  void onInit() {
    cupponlistApi();

    super.onInit();
  }

  @override
  void onClose() {
    //cupponModel = null;
    super.onClose();
  }

  @override
  void dispose() {
    //cupponModel = null;
    super.dispose();
  }
}

///todo from here checkout model value..............
