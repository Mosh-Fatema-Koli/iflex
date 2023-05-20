import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/favourite_contact_update_controller.dart';

class FavouriteContactUpdateView
    extends GetView<FavouriteContactUpdateController> {
  const FavouriteContactUpdateView({Key? key}) : super(key: key);
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
              hintText: 'Enter Phone Number',
              keybord: TextInputType.number,
              suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.contact_phone),),
            ),
            SignUpTextField(
              hintText: 'Enter Your Name',
              keybord: TextInputType.number,
            ),
            SignUpTextField(
              hintText: '',
              keybord: TextInputType.number,
            ),

            Apputils.sizeH10,

            MaterialButton(onPressed: (){},height: 40,minWidth: MediaQuery.of(context).size.width,color:Colors.blue,child: KText(text: 'Update',color: Colors.white,),),
            MaterialButton(onPressed: (){},height: 40,minWidth: MediaQuery.of(context).size.width,color:Colors.red,child: KText(text: 'Update',color: Colors.white,),)

          ],
        ),
      ),
    );
  }
}
