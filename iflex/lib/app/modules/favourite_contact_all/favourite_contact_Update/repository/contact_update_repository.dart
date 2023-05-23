import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Update/models/contact_update_model.dart';


class ContactNumberUpdateRepository {

  Future<bool> updateContactNumber(ContactUpdateModel contactUpdateModel) async {

   try{
     final token = await GetStorage().read("token");

     Uri url = Uri.parse(ApiUrls.FAVOURITE_CONTACT);
     final headers = {
       'Content-Type': 'application/json',
       'Authorization': 'Bearer $token',
     };
     final body = jsonEncode(contactUpdateModel.toJson());

     final response = await http.patch(url, headers: headers, body: body);

     if (response.statusCode == 200 || response.statusCode == 201) {

       return true;
     } else {
       return false;

     }
   }catch(e){
     print(e);
     return false;
   }
  }
}