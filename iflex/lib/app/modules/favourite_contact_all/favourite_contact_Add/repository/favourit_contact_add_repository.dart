import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/controllers/favourite_contact_controller.dart';
import 'dart:convert';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Add/models/contact_number_add_model.dart';
import 'package:iflex/app/routes/app_pages.dart';



class FavouriteContactAddRepository{

  final fetchcotroller = Get.put(FavouriteContactController());

  Future<void> addContact(ContactNumberModel contact) async {

    GlobalWidgets.customLoader();

    final token = await GetStorage().read("token");
    Uri url = Uri.parse(ApiUrls.FAVOURITE_CONTACT);
    final headers = {

      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final body = contact.toJson();

    final response = await http.put(url, headers: headers, body: jsonEncode(body));
    Get.back();
    if (response.statusCode == 200 || response.statusCode == 201) {

      print('Contact added successfully');
      Get.snackbar("Contact Added Successfully", "congrass",backgroundColor: Colors.indigo[400],colorText: Colors.white);
      fetchcotroller.fetchFavouriteContactData;
      Get.toNamed(Routes.FAVOURITE_CONTACT);




    } else {

      Get.snackbar("Failed to add contact", "Please try again",backgroundColor: Colors.indigo[400],colorText: Colors.white);
      throw Exception('Failed to add contact');

    }
  }

}