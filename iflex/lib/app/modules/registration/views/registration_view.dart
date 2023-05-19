import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/commons/utils/validators.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:iflex/app/routes/app_pages.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);


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
                SizedBox(
                  height: 80,
                ),

                KText(text: "Sign Up",fontSize: 22,fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 10,
                ),
                Image.asset("images/user.png",height: 150,width: 150,),
                SizedBox(
                  height: 20,
                ),
                SignUpTextField(
                  suffixIcon: Icon(Icons.call),
                  hintText: "Enter your Phone Number",
                  keybord:TextInputType.number,
                 controller: controller.userController,
                  validator: Validators.phoneValidator,
                ),

                SignUpTextField(
                  suffixIcon: Icon(Icons.email),
                  hintText: "Enter your email",
                  controller: controller.emailController,
                  validator: Validators.emailValidator,
                ),

                TextboxWidget(
                  hintText: "Enter your password",
                  isPassword: true,
                  controller: controller.passwordController,

                ),


                SizedBox(height: 10,),

                GlobalWidgets.buttonWidget(text: 'Registration', press: controller.registerWithEmail),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KText(text: "Do you Have account ?  ",color: Colors.black,),
                    GestureDetector(
                        onTap: (){
                       Get.toNamed(Routes.LOGIN);
                        },
                        child: KText(text: "Click Here",color: Colors.blue,)),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
