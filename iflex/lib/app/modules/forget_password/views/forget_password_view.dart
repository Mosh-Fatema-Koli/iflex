import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/commons/utils/validators.dart';
import 'package:iflex/app/commons/widgets/global_widgets.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: "Forget Password",color: Colors.white,),

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SignUpTextField(
                suffixIcon: Icon(Icons.email),
                hintText: "Enter your correct email",
                controller: controller.emailController,
                validator: Validators.emailValidator,
              ),
              SizedBox(height: 10,),

              GlobalWidgets.buttonWidget(text: 'Sent', press: controller.forgetPassword),
            ],
          ),
        )
      ),
    );
  }
}
