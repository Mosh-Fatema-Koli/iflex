import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/registration/views/registration_view.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:iflex/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
   LoginView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      height: 300,
                      child: Lottie.asset('images/93385-login.json',
                          height: 300, width: 300)),
                ),

                KText(
                  text: "Log In",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20,
                ),
                SignUpTextField(
                  suffixIcon: Icon(Icons.call),
                  keybord: TextInputType.number,
                  hintText: "Enter your Phone Number",
                  controller: controller.tecPhone,
                  validator: controller.validator,
                ),

                TextboxWidget(
                  hintText: "Password",
                  isPassword: true,
                  controller: controller.tecPassword,
                ),
                SizedBox(
                  height: 10,
                ),
                GlobalWidgets.buttonWidget(text: 'Login', press: controller.onLoginClicked),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KText(
                      text: "Don't have account ?  ",
                      color: Colors.black,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.REGISTRATION);
                        },
                        child: KText(
                          text: "Click Here",
                          color: Colors.blue,
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(Routes.FORGET_PASSWORD);
                  },
                  child: KText(
                    text: "Forget password?",
                    color: Colors.blue,
                    textAlign: TextAlign.right,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
