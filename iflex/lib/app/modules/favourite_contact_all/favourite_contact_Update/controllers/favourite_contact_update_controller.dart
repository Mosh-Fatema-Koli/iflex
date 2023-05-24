import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/contact_update_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/repository/contact_update_repository.dart';

class FavouriteContactUpdateController extends GetxController {
  //TODO: Implement FavouriteContactUpdateController

  final TextEditingController tecName = TextEditingController();
  final TextEditingController tecPhoneNo = TextEditingController();
  final TextEditingController tecPriyoti = TextEditingController();
  final TextEditingController tecid = TextEditingController();


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


  void updateContactNumber() async {
    GlobalWidgets.customLoader();

    ContactUpdateModel contactUpdateModel = ContactUpdateModel(
       // id: tecid.hashCode,
        name: tecName.text.trim(),
        number: tecPhoneNo.text.trim(),
        priority: tecPriyoti.text.trim()
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


