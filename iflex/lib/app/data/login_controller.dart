import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/first_page/views/main_screen.dart';




class LoginController extends GetxController{

   TextEditingController userController = TextEditingController();
   TextEditingController passwordController = TextEditingController();

  RxBool loading = false.obs ;

  void loginApi() async {

    loading.value = true;

   try{

    http.Response response = await http.post(Uri.parse(ApiUrls.LOGIN) , body : {

       "username": userController.text,
       "password": passwordController.text,
     });

     print(response.body);

     var data= jsonDecode(response.body);

     print(data);

     print(response.statusCode);

     if(response.statusCode == 200){
       debugPrint("--------------------check-------------------");
       debugPrint(data["access"].toString());
       debugPrint(data["refresh"].toString());
       debugPrint("--------------------check-------------------");

       await GetStorage().write ("token", data["access"].toString() );
        await GetStorage().write ("refreshToken", data["refresh"].toString() );

       await GetStorage().read("token");
      print(GetStorage().read("token").toString());
        userController.clear();
        passwordController.clear();

       Get.snackbar("Login Successfull", "congrass",backgroundColor: Colors.indigo[400],colorText: Colors.white);
        loading.value= false;
        Get.offAll( MainScreen());

     }
     else{
       userController.clear();
       passwordController.clear();
       Get.snackbar("Login Failed","Please login with correct phone number and password",backgroundColor: Colors.indigo[400],colorText: Colors.white);
       loading.value= false;
     }

   }catch(e){
     userController.clear();
     passwordController.clear();
     print(e.toString());
     loading.value= false;
   }

  }

}

