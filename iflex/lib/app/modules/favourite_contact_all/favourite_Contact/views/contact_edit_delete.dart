
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/controllers/favourite_contact_controller.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

class ContactNumberEdit extends GetWidget<FavouriteContactController>{

 final int id ;
 final String name;
 final String number;
 final int prioty;

  ContactNumberEdit({Key? key,required this.id,required this.name, required this.number, required this.prioty}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: 'UPDATE FAVOURITE CONTACT',fontSize: 14,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SignUpTextField(
              hintText: 'Enter Your Name',
              keybord: TextInputType.text,
            controller: controller.tecName
            ),
            SignUpTextField(
              hintText: 'Enter Phone Number',
              keybord: TextInputType.number,
              controller: controller.tecPhoneNo,
              suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.contact_phone),),
            ),

            SignUpTextField(
              hintText: 'Priyoti Number',
              keybord: TextInputType.number,
             controller: controller.tecPriyoti,
            ),

            Apputils.sizeH10,

            MaterialButton(onPressed: (){controller.updateContactNumber();},height: 40,minWidth: MediaQuery.of(context).size.width,color:Colors.blue,child: KText(text: 'Update',color: Colors.white,),),

            MaterialButton(onPressed: (){},height: 40,minWidth: MediaQuery.of(context).size.width,color:Colors.red,child: KText(text: 'Delete',color: Colors.white,),)

          ],
        ),
      ),
    );
  }
}
