import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'dart:convert';

import 'package:iflex/app/modules/history/models/tansition_history_model.dart';

class TransactionRepository {
  Future<List<TransactionModel>> fetchTransactions() async {

    final token = await GetStorage().read("token");

    Uri url = Uri.parse(ApiUrls.TOP_UP_REQUEST_HISTORY);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    }; // Replace with your API endpoint

    final response = await http.get(url,headers: headers);

    print(response);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as List<dynamic>;
      return jsonData.map((data) => TransactionModel(
        createdAt: data['created_at'],
        amount: data['amount'],
        recipientNumber: data['recipient_number'],
        status: data['status'],
      )).toList();
    } else {
      throw Exception('Failed to fetch transactions');
    }
  }


}
