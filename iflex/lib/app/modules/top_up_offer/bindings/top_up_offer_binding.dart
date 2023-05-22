import 'package:get/get.dart';

import '../controllers/top_up_offer_controller.dart';

class TopUpOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopUpOfferController>(
      () => TopUpOfferController(),
    );
  }
}
