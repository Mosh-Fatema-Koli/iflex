import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/first_page/views/main_screen.dart';
import 'package:iflex/app/modules/login/models/login_reponse_model.dart';
import 'package:iflex/app/modules/login/models/login_request_model.dart';
import 'package:iflex/app/modules/login/repository/login_repository.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController tecPhone = TextEditingController();
  final TextEditingController tecPassword = TextEditingController();

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
    // tecPhone.dispose();
    // tecPassword.dispose();
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

    LoginRepository
        .userLogin(loginRequestModel: loginRequestModel)
        .then((LoginResponseModel? responseData) async {
      Get.back();

      if (responseData != null) {

        debugPrint("--------------------check-------------------");
        debugPrint(responseData.access.toString());
        debugPrint(responseData.refresh.toString());
        debugPrint("--------------------check-------------------");

        await GetStorage().write ("token", responseData.access.toString() );
        await GetStorage().write ("refreshToken", responseData.refresh.toString() );

        await GetStorage().read("token");

        print(GetStorage().read("token").toString());

           tecPhone.clear();
           tecPassword.clear();

        Get.snackbar("Login Successfull", "congrass",backgroundColor: Colors.indigo[400],colorText: Colors.white);

        Get.offAll( MainScreen());

      } else {

        Get.snackbar("Login Failed","Please login with correct phone number and password",backgroundColor: Colors.indigo[400],colorText: Colors.white);

      }
    });
  }
}
