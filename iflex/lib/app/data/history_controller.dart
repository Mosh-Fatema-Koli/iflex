import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class HistoryController extends GetxController{

  // final refreshToken = Get.put(RefreshTokenController());
  //
  // var isLoaded = false.obs;
  // HistoryModel? historyModel;
  //
  // final list = <HistoryModel>[].obs;
  //
  //
  // @override
  // void onInit() {
  //   fatchHistory();
  //   super.onInit();
  // }
  //
  //
  // fatchHistory() async{
  //
  //   isLoaded.value = true;
  //
  //   final token = await GetStorage().read("token");
  //
  //   final headers = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer $token',
  //   };
  //
  //   final response = await http.get(Uri.parse(ApiUrl.TOP_UP_REQUEST_HISTORY), headers: headers);
  //
  //   print(response.statusCode);
  //   print(response.body);
  //
  //   if (response.statusCode ==200) {
  //
  //
  //     var result = jsonDecode(response.body);
  //     historyModel=  HistoryModel.fromJson(result);
  //     isLoaded.value = false;
  //     print(result);
  //
  //
  //   }
  //   else if(response.statusCode == 401) {
  //
  //     refreshToken.refreshToken();
  //     final token = await GetStorage().read("token");
  //     final headers1 = {
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer $token',
  //     };
  //
  //     http.Response response1 = await http.get(Uri.parse(ApiUrl.TOP_UP_REQUEST_HISTORY), headers: headers1);
  //
  //     print(response1.statusCode);
  //     print(response1.body);
  //
  //     if(response1.statusCode == 200){
  //       print("success");
  //
  //       var result = jsonDecode(response.body);
  //       historyModel=  HistoryModel.fromJson(result);
  //
  //       isLoaded.value = false;
  //     }else{
  //       isLoaded.value = false;
  //       print("Failed");
  //     }
  //   }else{
  //     isLoaded.value = false;
  //     print("Failed");
  //   }
  //
  // }
  //


}