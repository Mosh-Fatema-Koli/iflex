import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/profile/models/profile_model.dart';
import 'package:iflex/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  final refCotroller = Get.put(RefreshTokenController());

  var isLoaded = false.obs;
  ProfileModel? user;

  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  void onInit() {
    refCotroller.refreshToken();
    fetchUser();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> fetchUser() async{

    isLoaded.value = true;

    final token = await GetStorage().read("token");

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final response = await http.get(Uri.parse(ApiUrls.PROFILE), headers: headers);

    print(response.statusCode);
    print(response.body);

    if (response.statusCode ==200) {


      var result = jsonDecode(response.body);
      user=  ProfileModel.fromJson(result);
      isLoaded.value = false;
      print(result);


    }
    // else if(response.statusCode == 401) {
    //
    //   final reftoken = await GetStorage().read("refreshToken");
    //
    //   print("Ref Token: $reftoken");
    //
    //   var response = await http.post(Uri.parse(ApiUrls.REFRESH_TOKEN), body: {
    //     "refresh": reftoken.toString()
    //   } );
    //   print(response.body);
    //
    //   var data= jsonDecode(response.body);
    //
    //
    //   print("*************************  neww ****************************");
    //   print(data);
    //
    //   await GetStorage().write ("token", data["access"].toString() );
    //
    //   print("*************************  Save ****************************");
    //   print(GetStorage().read("token"));
    //
    //   final headers1 = {
    //     'Content-Type': 'application/json',
    //     'Authorization': 'Bearer $token',
    //   };
    //
    //   http.Response response1 = await http.get(Uri.parse(ApiUrls.PROFILE), headers: headers1);
    //
    //   print(response1.statusCode);
    //   print(response1.body);
    //
    //   if(response1.statusCode == 200){
    //     print("success");
    //
    //     var result = jsonDecode(response.body);
    //     user=  ProfileModel.fromJson(result);
    //     isLoaded.value = false;
    //   }else{
    //     isLoaded.value = false;
    //     print("Failed");
    //   }
    // }
    //
    else{
      isLoaded.value = false;
      print("Failed");
    }

  }


  Future<void> updateData() async {

    refCotroller.refreshToken();

    //getx update api data
    isLoaded.value = true;
    final token = await GetStorage().read("token");

    try {
      var body = {
        'first_name': firstController.text,
        'last_name': lastController.text,
        'email': emailController.text,

      };

      http.Response response = await http.patch(Uri.parse(ApiUrls.PROFILE),
        body: jsonEncode(body),

        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        isLoaded.value = false;
        final json = jsonDecode(response.body);

        print('data updated');
        Get.snackbar("Updated Successfully","",backgroundColor: Colors.indigo[400],colorText: Colors.white);
        Get.toNamed(Routes.PROFILE);

        firstController.clear();
        lastController.clear();
        emailController.clear();

        print(json);
      }

      // else if(response.statusCode == 401) {
      //
      //   final reftoken = await GetStorage().read("refreshToken");
      //
      //   print("Ref Token: $reftoken");
      //
      //   var response = await http.post(Uri.parse(ApiUrls.REFRESH_TOKEN), body: {
      //
      //     "refresh": reftoken.toString()
      //   } );
      //   print(response.body);
      //
      //   var data= jsonDecode(response.body);
      //
      //
      //   print("*************************  neww ****************************");
      //   print(data);
      //
      //   await GetStorage().write ("token", data["access"].toString() );
      //
      //   print("*************************  Save ****************************");
      //   print(GetStorage().read("token"));
      //
      //
      //   http.Response response3 = await http.put(Uri.parse(ApiUrls.PROFILE),
      //     body: jsonEncode(body),
      //     headers: {
      //       'Content-Type': 'application/json',
      //       'Authorization': 'Bearer $token',
      //     },
      //   );
      //
      //   print(response3.statusCode);
      //   print(response3.body);
      //
      //   if(response3.statusCode == 200){
      //
      //     final json = jsonDecode(response.body);
      //     firstController.clear();
      //     lastController.clear();
      //     emailController.clear();
      //
      //     print('data updated');
      //
      //     Get.snackbar("Updated Successfully","",backgroundColor: Colors.indigo[400],colorText: Colors.white);
      //
      //     fetchUser();
      //     Get.toNamed(Routes.PROFILE);
      //     print(json);
      //
      //   }else{
      //     isLoaded.value = false;
      //     Get.snackbar("Update Failed "," Try again",backgroundColor: Colors.indigo[400],colorText: Colors.white);
      //   }
      // }
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

  Future<void> deleteUserData(String userid) async {
    //getx delete api data
    var token =
        'YOUR_TOKEN';
    try {
      http.Response response = await http.delete(
        Uri.parse('https://gorest.co.in/public/v2/users/$userid'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );

      if (response.statusCode == 204) {
        // final json = jsonDecode(response.body);
        // delete success, do anything
        print('deleted user $userid');
      } else {
        print('response status code not 200');
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }
    } catch (e) {
      print(e);
    }
  }


}
