import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_response_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Add/repository/favourit_contact_add_repository.dart';
import 'package:iflex/app/routes/app_pages.dart';

class FavouriteContactAddController extends GetxController {
  //TODO: Implement FavouriteContactAddController
  final refCotroller = Get.put(RefreshTokenController());

  final TextEditingController tecname = TextEditingController();
  final TextEditingController tecphoneno = TextEditingController();
  final TextEditingController tecpriority = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void addContactbyClicked() {

    GlobalWidgets.customLoader();
    refCotroller.refreshToken();
    FavouriteContactModel favouriteContactModel = FavouriteContactModel(
        fields: Fields(
            name: tecname.text.trim(),
            number: tecphoneno.text.trim(),
            priority: tecpriority.text.trim()
        )
    );

    FavouriteContactAddRepository.addfavouritecontactnumber(
        favouriteContactModel: favouriteContactModel).then((ContactAddResponseModel? responseData) async {
      Get.back();

      if (responseData != null) {

        Get.snackbar("Contact Added Successfully", "congrass",backgroundColor: Colors.indigo[400],colorText: Colors.white);
        Get.toNamed(Routes.FAVOURITE_CONTACT);

      } else {

        Get.snackbar("Contact Added Failed", "congrass",backgroundColor: Colors.indigo[400],colorText: Colors.white);
      }

      }
    );


  }

}
