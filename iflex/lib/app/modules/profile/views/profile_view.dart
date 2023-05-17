import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/more/views/more_view.dart';
import 'package:iflex/app/modules/profile/views/Edit_profile.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Get.to(EditPage());
          }, icon: Icon(Icons.edit))
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              color: Colors.blue,
              child:  Center(child: Image.asset("images/user.png",height: 120,width: 120,)),
            ),

            Container(
              color: HexColor("#EFF2F9"),
              width: MediaQuery.of(context).size.width,
              child: Padding(

                padding: const EdgeInsets.all(15),
                child: KText(text: 'PROFILE INFO',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(text: 'Name'),
                  Apputils.sizeH10,
                  Row(
                    children: [
                      KText(text: "",),
                      // Apputils.sizeW5,
                      // KText(text: usercon.user?.lastName),
                    ],
                  ),


                ],
              ),
            ),
            Dividerwidget(),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(text: 'Email'),
                  Apputils.sizeH10,
                  KText(text: "usercon.user?.email"),


                ],
              ),
            ),
            Dividerwidget(),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(text: 'Number'),
                  Apputils.sizeH10,
                  KText(text: ""),
                ],
              ),
            ),
            Dividerwidget(),




          ],
        ),
      )
    );
  }
}
