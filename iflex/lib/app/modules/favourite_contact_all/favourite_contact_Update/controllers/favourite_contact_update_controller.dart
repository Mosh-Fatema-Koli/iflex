import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Update/models/contact_update_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Update/repository/contact_update_repository.dart';

class FavouriteContactUpdateController extends GetxController {
  //TODO: Implement FavouriteContactUpdateController
  RxList<ContactUpdateModel> favouriteContactList = <ContactUpdateModel>[].obs;
  RxBool favouriteContactDataLoaded = false.obs;

  final TextEditingController tecName = TextEditingController();
  final TextEditingController tecPhoneNo = TextEditingController();
  final TextEditingController tecPriyoti = TextEditingController();


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


  Future<void> updateContactNumber() async {

    favouriteContactDataLoaded.value = true;

    ContactNumberUpdateRepository().updateContactNumber().


    });
    try {
      await repository.updateContactNumber(contactNumber);
      // Success! Handle the updated data as needed
    } catch (error) {
      // Handle error
    }
  }
}
