import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Update/models/contact_update_model.dart';


class ContactNumberUpdateRepository {

  Future<ContactNumberModel> updateContactNumber(ContactNumberModel contactNumber) async {

    final token = await GetStorage().read("token");

    Uri url = Uri.parse(ApiUrls.FAVOURITE_CONTACT);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final body = jsonEncode(contactNumber.toJson());

    final response = await http.patch(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return ContactNumberModel.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to update contact number.');
    }
  }
}