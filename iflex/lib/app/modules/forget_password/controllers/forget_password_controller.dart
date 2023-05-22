import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/routes/app_pages.dart';

class ForgetPasswordController extends GetxController {
  //TODO: Implement ForgetPasswordController

  final TextEditingController emailController = TextEditingController();

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

  Future<void> forgetPassword() async {
    GlobalWidgets.customLoader();

    try {
      http.Response response =
      await http.post(Uri.parse(ApiUrls.FORGET_PASSWORD), body: {

        'email': emailController.text,

      });

      var data = jsonDecode(response.body);

      print(data);
      print(response.statusCode);

      Get.back();

      if (response.statusCode == 200 || response.statusCode == 201) {

        emailController.clear();


        Get.snackbar("Link Sent", "Check Your Email",
            backgroundColor: Colors.indigo[400], colorText: Colors.white);

        Get.toNamed(Routes.LOGIN);

      } else {
        var data = jsonEncode(response.body);
        Get.snackbar(
            "Registration Failed", "Please enter your valid number and email",
            backgroundColor: Colors.indigo[400], colorText: Colors.white);
      }
    } catch (e) {
      emailController.clear();


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
