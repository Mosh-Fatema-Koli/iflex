import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  RegistrationView({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key:  formKey,

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
                //  controller: registerationController.userController.value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                SignUpTextField(
                  suffixIcon: Icon(Icons.email),
                  hintText: "Enter your email",
                //  controller: registerationController.emailController.value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;

                  },
                ),

                // TextboxWidget(
                //   hintText: "Enter your password",
                //   isPassword: true,
                //   controller: registerationController.passwordController.value,
                //
                //
                // ),


                SizedBox(height: 10,),

                Obx(() => MaterialButton(

                    onPressed: (){

                      if (formKey.currentState!.validate()) {

                       // registerationController.registerWithEmail();

                      }

                    },
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.blue[900],

                    height: 45,
                    child:KText(text: "Sign Up",fontSize: 16,color: Colors.white,)),),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KText(text: "Do you Have account ?  ",color: Colors.black,),
                    GestureDetector(
                        onTap: (){
                       //   Get.to(LoginPage());
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
