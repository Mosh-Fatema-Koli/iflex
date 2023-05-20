import 'package:get/get.dart';

import '../controllers/favourite_contact_add_controller.dart';

class FavouriteContactAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouriteContactAddController>(
      () => FavouriteContactAddController(),
    );
  }
}
