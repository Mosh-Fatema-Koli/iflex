import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_model.dart';
import 'dart:convert';

import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_response_model.dart';



class FavouriteContactAddRepository{


  static Future<ContactAddResponseModel?> addfavouritecontactnumber({required FavouriteContactModel favouriteContactModel})async  {

    try {

      final token = await GetStorage().read("token");

      Uri url = Uri.parse(ApiUrls.FAVOURITE_CONTACT);

      ContactAddResponseModel contactAddResponseModel;

      String contactAddBody = jsonEncode(favouriteContactModel.fields?.toJson());

      final http.Response response = await http
          .put(url, body: contactAddBody,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',})
          .timeout(const Duration(minutes: 1));

      if (response.statusCode == 200 || response.statusCode == 201) {
        contactAddResponseModel= ContactAddResponseModel.fromJson(jsonDecode(response.body));
        return contactAddResponseModel;

      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

}