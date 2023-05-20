import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/profile_edit_controller.dart';

class ProfileEditView extends GetView<ProfileEditController> {
  ProfileEditView({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: "Profile Edit",color: Colors.white,fontSize: 16),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: 170,
                  child:  Center(child: Image.asset("images/user.png",height: 120,width: 120,)),
                ),
                CustomTextField(
                  //controller: useredit.firstController,
                  hintText: "First Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },

                ),
                CustomTextField(
                  // controller: useredit.lastController,
                  hintText: "Last Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  // controller: useredit.emailController,
                  hintText: "Email",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),

                Apputils.sizeH10,

                MaterialButton(onPressed: (){

                  if (formKey.currentState!.validate()) {
                    //  useredit.updateData();
                  }

                },color:Colors.blue, child: KText(text: "Update",color: Colors.white,),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
