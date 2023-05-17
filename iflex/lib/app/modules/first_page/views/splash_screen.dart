import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/first_page/views/onboard_one.dart';
import 'package:iflex/app/modules/widget/app_colors.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';



class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () {

      Get.to(OneboardOne());

    //  logincheck.checkAccessToken();

    });

    return Scaffold(

      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          color: Colors.blue[900],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 100,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/logo.jpeg',
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.cyan,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              KText(text: 'VERSION 1.0.1',color: AppColors.white,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // void checkAccessToken() async {
  //
  //   final token = await GetStorage().read("token");
  //   final reftoken = await GetStorage().read("refreshToken");
  //
  //   print("Token: $token");
  //   print("Refresh: $reftoken");
  //
  //   if (token != null && reftoken != null) {
  //
  //     Get.offAll(MainScreen());
  //
  //   } else if(token == null && reftoken != null) {
  //
  //     http.Response response = await http.post(Uri.parse(ApiUrl.REFRESH_TOKEN), body: {
  //       "refresh": reftoken.toString()
  //     } );
  //
  //     print(response.body);
  //
  //     var data= jsonDecode(response.body);
  //     print(data);
  //
  //     if(response.statusCode == 200){
  //
  //       await GetStorage().write ("token", data["access"].toString() );
  //
  //       Get.offAll(MainScreen());
  //
  //     }else{
  //
  //       Get.offAll(OneboardOne());
  //     }
  //
  //   }else{
  //
  //
  //   }
  // }


}