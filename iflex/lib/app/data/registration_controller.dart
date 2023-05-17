import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/login/views/login_view.dart';



class RegisterationController extends GetxController{

  final userController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs ;

  Future<void> registerWithEmail() async {

    try {

      http.Response response = await http.post(Uri.parse(ApiUrls.REGISTRATION),body: {

          'username':userController.value.text,
          'email': emailController.value.text,
          'password':passwordController.value.text

      });

      var data= jsonDecode(response.body);

      print(data);
      print(response.statusCode);

      if(response.statusCode == 201){

        userController.value.clear();
        emailController.value.clear();
        passwordController.value.clear();

        Get.snackbar("Registration Successfull","congatulation",backgroundColor: Colors.indigo[400],colorText: Colors.white);
        loading.value= false;
        Get.offAll(LoginView());
      }
      else{

      var data= jsonEncode(response.body);
        Get.snackbar("Registration Failed", "Please enter your valid number and email",backgroundColor: Colors.indigo[400],colorText: Colors.white);
        loading.value= false;
      }

    } catch (e) {

      userController.value.clear();
      emailController.value.clear();
      passwordController.value.clear();
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




//
// class RegisterController {
//   register(
//       BuildContext context, {
//         required String username,
//         required String email,
//         required String? password,
//       }) async {
//     dio.FormData formData = dio.FormData.fromMap({
//       'username': username,
//       'email': email,
//       'password': password,
//     });
//
//     dio.Response response = await AuthRepository.register(payload: formData);
//
//     if ( response.data['id'] != null ){
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.grey,
//         content: const Text('Successfully Register'),
//         duration: const Duration(seconds: 3),
//       ));
//       // ignore: use_build_context_synchronously
//       Navigator.pushReplacement(
//         context,
//         BottomTransition(LoginPage()),
//       );
//     } else {
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.grey,
//         content: const Text('Registration failed'),
//         duration: const Duration(seconds: 3),
//       ));
//       Navigator.pop(context);
//       debugPrint("status code error");
//     }
//   }
// }