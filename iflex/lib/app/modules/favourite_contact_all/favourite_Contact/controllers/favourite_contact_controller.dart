import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/contact_update_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/repository/contact_update_repository.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/repository/favourite_repository.dart';

class FavouriteContactController extends GetxController {

  final refCotroller = Get.put(RefreshTokenController());
  late  TextEditingController tecName = TextEditingController();
  final TextEditingController tecPhoneNo = TextEditingController();
  final TextEditingController tecPriyoti = TextEditingController();
  final TextEditingController tecid = TextEditingController();


  RxList<FavouriteContactModel> favouriteContactList = <FavouriteContactModel>[].obs;
  RxBool favouriteContactDataLoaded = false.obs;
  @override
  void onInit() {
    ///have to call refreshToken Api here

    refCotroller.refreshToken();
    fetchFavouriteContactData();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void fetchFavouriteContactData(){
    favouriteContactDataLoaded.value = true;
    FavouriteRepository().favouriteContactFetch().then((List<FavouriteContactModel> responseData) {
      favouriteContactList.value = responseData;

    });
  }

  void updateContactNumber() async {
    GlobalWidgets.customLoader();
    refCotroller.refreshToken();
    ContactUpdateModel contactUpdateModel = ContactUpdateModel(
        name: tecName.text.trim(),
        number: tecPhoneNo.text.trim(),
        priority: tecPriyoti.text.trim(),
    );
    ContactNumberUpdateRepository.updateContactNumber(contactUpdateModel).then((bool ? responseData) async {
      Get.back();

      if (responseData == true) {

        Get.snackbar("Update Successfull", "congrass",backgroundColor: Colors.indigo[400],colorText: Colors.white);

      } else {

        Get.snackbar("Update Failed","Try Again",backgroundColor: Colors.indigo[400],colorText: Colors.white);

      }
    });

  }



}
