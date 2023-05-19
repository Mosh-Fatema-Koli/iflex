import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/first_page/views/main_screen.dart';
import 'package:iflex/app/modules/first_page/views/onboard_one.dart';
import 'package:iflex/app/modules/login/views/login_view.dart';



class RefreshTokenController extends GetxController {

  final reftoken = GetStorage().read("refreshToken");


  void checkAccessToken() async {

    final token = await GetStorage().read("token");
    final reftoken = await GetStorage().read("refreshToken");

    print("Refresh: $reftoken");

    if (reftoken != null) {
      http.Response response = await http.post(
          Uri.parse(ApiUrls.REFRESH_TOKEN), body: {
        "refresh": reftoken.toString()
      });

      print(response.body);

      var data = jsonDecode(response.body);

      print("*************************  neww ****************************");
      print(data);

      await GetStorage().write("token", data["access"].toString());

      print("*************************  Save ****************************");
      print(GetStorage().read("token"));


      if (response.statusCode == 200) {
        Get.offAll(MainScreen());
      }else {
        Get.offAll(OneboardOne());

      }
    } else {
      Get.offAll(OneboardOne());
    }
  }



  Future<void> refreshToken() async {

    final reftoken = await GetStorage().read("refreshToken");

    print("Ref Token: $reftoken");

    var response = await http.post(Uri.parse(ApiUrls.REFRESH_TOKEN), body: {
      "refresh": reftoken.toString()
    });
    print(response.body);

    var data = jsonDecode(response.body);

    print("*************************  neww ****************************");
    print(data);

    await GetStorage().write("token", data["access"].toString());

    print("*************************  Save ****************************");
    print(GetStorage().read("token"));
  }


  Future<void> logout() async {
    try{
      refreshToken();
      final token = await GetStorage().read("token");
      final response = await http.post(Uri.parse(ApiUrls.LOGOUT),    headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      );
      GetStorage().remove("token");
      GetStorage().remove("refreshToken");
      Get.offAll(LoginView());


    }catch(e){
      print(e.toString());
    }
    // Handle the response from the API endpoint as needed
  }



}