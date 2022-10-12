import 'package:get/get.dart';
import 'package:gyros_app/models/get_profile_model.dart';
import 'package:gyros_app/services/api_provider.dart';

class GetProfileController extends GetxController {
  RxBool isLoading = true.obs;

  GetprofileModel? getprofileModel;

  void addressidApi() async {
    isLoading(false);

    getprofileModel = await ApiProvider.GetProfileApi();
    if (getprofileModel != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);

      //Get.to(()=>Container());
    }
  }

  @override
  void onInit() {
    addressidApi();

    super.onInit();
  }

  @override
  void onClose() {
    getprofileModel = null;
    super.onClose();
  }

  @override
  void dispose() {
    getprofileModel = null;
    super.dispose();
  }
}
