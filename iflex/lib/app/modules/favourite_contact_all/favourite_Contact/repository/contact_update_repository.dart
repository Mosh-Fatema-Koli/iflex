import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/contact_update_model.dart';


class ContactNumberUpdateRepository {

  static Future<bool> updateContactNumber(ContactUpdateModel contactUpdateModel) async {

   try {
    final token = await GetStorage().read("token");

    Uri url = Uri.parse(ApiUrls.FAVOURITE_CONTACT);
    final headers = {
     'Content-Type': 'application/json',
     'Authorization': 'Bearer $token',
    };
    String updateBody = jsonEncode(contactUpdateModel.toJson());
    final http.Response response = await http
        .post(url, body: updateBody,
        headers: headers)
        .timeout(const Duration(minutes: 1));
         print(response);

    if (response.statusCode == 200 || response.statusCode == 201) {
     // contactUpdateResponseModel = ContactUpdateResponseModel.fromJson(jsonDecode(response.body));
     return true;

    } else {
     return false;
    }

   } catch (e) {

    return false;
   }

  }



}