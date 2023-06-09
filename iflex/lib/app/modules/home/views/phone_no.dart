
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/home/views/contact_list.dart';
import 'package:iflex/app/modules/home/views/operator.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class PhoneNoSet extends StatelessWidget {
 PhoneNoSet({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SignUpTextField(
                    hintText: 'Enter Phone Number',
                    keybord: TextInputType.number,
                    suffixIcon: IconButton(onPressed: (){
                      Get.to(MyContact());
                    },icon: Icon(Icons.contact_phone),),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: HexColor("#EFF2F9"),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: KText(text: 'SELECT FROM FAVOURITE',fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 480,

                )
              ],
            ),

            MaterialButton(onPressed: (){
              Get.to(OperatorSelect());

            },height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color:Colors.blue,child: KText(text: 'Continue',color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
