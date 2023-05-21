import 'package:get/get.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Update/models/contact_update_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Update/repository/contact_update_repository.dart';

class FavouriteContactUpdateController extends GetxController {
  //TODO: Implement FavouriteContactUpdateController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  ContactNumberUpdateRepository repository = ContactNumberUpdateRepository();
  late ContactNumberModel contactNumber;

  Future<void> updateContactNumber() async {
    try {
      await repository.updateContactNumber(contactNumber);
      // Success! Handle the updated data as needed
    } catch (error) {
      // Handle error
    }
  }
}
