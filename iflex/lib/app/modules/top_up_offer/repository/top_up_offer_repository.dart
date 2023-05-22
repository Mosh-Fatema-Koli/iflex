

import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/top_up_offer/models/top_up_offer_model.dart';
import 'package:http/http.dart' as http;

class TopUpOfferRepository {
  Future<List<TopUpOfferModel>> fetchTopUpOffers() async {

    final token = await GetStorage().read("token");

    Uri url = Uri.parse(ApiUrls.TOP_UP_OFFER);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.get(url,headers:headers);

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => TopUpOfferModel.fromJson(json)).toList();

    } else {
      throw Exception('Failed to fetch top-up offers');
    }
  }
}