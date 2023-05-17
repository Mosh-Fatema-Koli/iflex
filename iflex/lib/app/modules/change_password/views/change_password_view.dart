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
              // TextboxWidget(
              //   hintText: " Current Password",
              //   isPassword: true,
              //   controller: changePassword.currentpassword ,
              // ),
              // TextboxWidget(
              //   hintText: "New Password",
              //   isPassword: true,
              //   controller: changePassword.newpassword,
              // ),
              // TextboxWidget(
              //   hintText: "Confirm Password",
              //   isPassword: true,
              //   controller: changePassword.confirmpassword,
              // ),
              //
              // MaterialButton(onPressed: (){
              //
              //   if (_formKey.currentState!.validate() ) {
              //
              //     if(changePassword.newpassword.text == changePassword.confirmpassword.text){
              //       changePassword.updatePassword();
              //     }else{
              //
              //       changePassword.currentpassword.clear();
              //       changePassword.newpassword.clear();
              //       changePassword.confirmpassword.clear();
              //
              //       Get.snackbar("Password did not match","Try again",backgroundColor: Colors.indigo[400],colorText: Colors.white);
              //     }
              //
              //   }
              //   return null;
              // },

               // color:Colors.blue, child: KText(text: "Update",color: Colors.white,),)
            ],
          ),
        ),
      ),
    );
  }
}

