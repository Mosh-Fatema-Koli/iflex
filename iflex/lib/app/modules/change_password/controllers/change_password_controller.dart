import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/routes/app_pages.dart';

class ChangePasswordController extends GetxController {
  //TODO: Implement ChangePasswordController

  final refreshToken = Get.put(RefreshTokenController());

  var isLoaded = false.obs;
//  User? user;


  TextEditingController currentpassword = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }


  updatePassword() async {

    refreshToken.refreshToken();
    //getx update api data
    isLoaded.value = true;
    final token = await GetStorage().read("token");
    
    print(token);

    try {
      var body = {
        'password': confirmpassword.text,
      };
      print(body);

      http.Response response = await http.patch(Uri.parse(ApiUrls.PROFILE),

        body: jsonEncode(body),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print(response);

      if (response.statusCode == 200) {
        isLoaded.value = false;
        final json = jsonDecode(response.body);

        print('data updated');

        Get.snackbar('Success', 'Password changed successfully',backgroundColor: Colors.indigo[400],colorText: Colors.white);

        currentpassword.clear();
        newpassword.clear();
        confirmpassword.clear();

        print(json);

        Get.toNamed(Routes.MORE);
      }
      else {
        isLoaded.value = false;
        print('response status code not 200');
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }

    } catch (e) {
      print(e);
    }
  }
}
