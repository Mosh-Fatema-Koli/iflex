import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/login/models/login_reponse_model.dart';
import 'package:iflex/app/modules/login/models/login_request_model.dart';
import 'package:iflex/app/modules/login/repository/login_api_helper.dart';
import 'package:iflex/app/modules/login/repository/login_api_impl.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController tecPhone = TextEditingController();
  final TextEditingController tecPassword = TextEditingController();

  LoginApiHelper loginApi = LoginApiImpl();

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

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  void onLoginClicked() {
    GlobalWidgets.customLoader();
    LoginRequestModel loginRequestModel = LoginRequestModel(
        username: tecPhone.text.trim(), password: tecPassword.text.trim());

    loginApi
        .userLogin(loginRequestModel: loginRequestModel)
        .then((LoginResponseModel? responseData) {
      Get.back();
      if (responseData != null) {

      } else {
        Get.snackbar("title", "message");
      }
    });
  }
}
