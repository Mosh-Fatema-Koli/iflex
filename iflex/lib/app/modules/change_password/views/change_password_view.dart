import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
 ChangePasswordView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'Change Password',color: Colors.white,fontSize: 16,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,

          child: Column(
            children: [
              TextboxWidget(
                hintText: " Current Password",
                isPassword: true,
                controller: controller.currentpassword ,
              ),
              TextboxWidget(
                hintText: "New Password",
                isPassword: true,
                controller: controller.newpassword,
              ),
              TextboxWidget(
                hintText: "Confirm Password",
                isPassword: true,
                controller: controller.confirmpassword,
              ),

              MaterialButton(onPressed: (){

                if (_formKey.currentState!.validate() ) {

                  if(controller.newpassword.text == controller.confirmpassword.text){
                    controller.updatePassword();
                  }else{

                    controller.currentpassword.clear();
                    controller.newpassword.clear();
                    controller.confirmpassword.clear();

                    Get.snackbar("Password did not match","Try again",backgroundColor: Colors.indigo[400],colorText: Colors.white);
                  }

                }
                return null;
              },

               color:Colors.blue, child: KText(text: "Update",color: Colors.white,),)
            ],
          ),
        ),
      ),
    );
  }
}

