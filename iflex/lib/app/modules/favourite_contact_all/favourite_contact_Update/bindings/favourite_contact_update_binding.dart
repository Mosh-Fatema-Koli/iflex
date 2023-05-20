import 'package:get/get.dart';

import '../controllers/favourite_contact_update_controller.dart';

class FavouriteContactUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouriteContactUpdateController>(
      () => FavouriteContactUpdateController(),
    );
  }
}
