
import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class FavouriteContactEdit extends StatelessWidget {
  const FavouriteContactEdit({Key? key}) : super(key: key);

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

            Apputils.sizeH10,

            MaterialButton(onPressed: (){},height: 40,minWidth: MediaQuery.of(context).size.width,color:Colors.blue,child: KText(text: 'Update',color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
