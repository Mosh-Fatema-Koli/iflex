import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_contact_Add/models/contact_number_add_model.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/favourite_contact_add_controller.dart';

class FavouriteContactAddView extends GetView<FavouriteContactAddController> {
  const FavouriteContactAddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: 'ADD FAVOURITE CONTACT',fontSize: 14,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SignUpTextField(
              hintText: 'Name',
              keybord: TextInputType.number,
              controller: controller.tecname,
              suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.contact_phone),),
            ),
            SignUpTextField(
              hintText: 'Enter Phone Number',
              keybord: TextInputType.number,
              controller: controller.tecphoneno,
            ),
            SignUpTextField(
              hintText: 'Priority No',
              keybord: TextInputType.number,
              controller: controller.tecpriority,
            ),

            Apputils.sizeH10,

            MaterialButton(onPressed: (){

              final contact = ContactNumberModel(
                number: controller.tecphoneno.text,
                name: controller.tecname.text,
                priority: controller.tecpriority.text,
              );
              controller.addContact(contact);
            },height: 40,minWidth: MediaQuery.of(context).size.width,color:Colors.blue,child: KText(text: 'ADD',color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
