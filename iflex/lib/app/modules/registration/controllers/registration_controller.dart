import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/routes/app_pages.dart';

class RegistrationController extends GetxController {
  //TODO: Implement RegistrationController

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final  TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String? phonvalidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }
    String? emailvalidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your valid number';
    }
    return null;
  }


  Future<void> registerWithEmail() async {

    GlobalWidgets.customLoader();

    try {

      http.Response response = await http.post(Uri.parse(ApiUrls.REGISTRATION),body: {

        'username':userController.text,
        'email': emailController.text,
        'password': passwordController.text

      });

      var data= jsonDecode(response.body);

      print(data);
      print(response.statusCode);

      Get.back();

      if(response.statusCode == 200 || response.statusCode == 201){

        userController.clear();
        emailController.clear();
        passwordController.clear();

        Get.snackbar("Registration Successfull","congatulation",backgroundColor: Colors.indigo[400],colorText: Colors.white);


        Get.toNamed(Routes.LOGIN);
      }
      else{

        var data= jsonEncode(response.body);
        Get.snackbar("Registration Failed", "Please enter your valid number and email",backgroundColor: Colors.indigo[400],colorText: Colors.white);
      }

    } catch (e) {

      userController.clear();
      emailController.clear();
      passwordController.clear();

      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}
