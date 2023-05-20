import 'package:get/get.dart';

import '../controllers/favourite_contact_controller.dart';

class FavouriteContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouriteContactController>(
      () => FavouriteContactController(),
    );
  }
}
