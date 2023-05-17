import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/change_password/views/change_password_view.dart';
import 'package:iflex/app/modules/favourite_Contact/views/favourite_contact_view.dart';
import 'package:iflex/app/modules/more/views/about_us.dart';
import 'package:iflex/app/modules/more/views/help.dart';
import 'package:iflex/app/modules/more/views/privecy_policy.dart';
import 'package:iflex/app/modules/more/views/recharge_request.dart';
import 'package:iflex/app/modules/profile/views/profile_view.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/more_controller.dart';

class MoreView extends GetView<MoreController> {
  const MoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EFF2F9"),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 35,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Get.to(ProfileView());
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  child: Container(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Apputils.sizeW5,
                              Image.asset("images/user.png",height: 40,),
                              Apputils.sizeW5,
                              KText(text: "Profile",fontSize: 20,)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue[900],)
                        ],
                      ),
                    ),

                  ),
                ),
              ),
            ),
            Apputils.sizeH10,

            Padding(
              padding: const EdgeInsets.all(10),
              child: KText(text: "MY DASHBOARD",fontSize: 15,fontWeight: FontWeight.bold,),
            ),
            Apputils.sizeH10,
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                 Get.to(FavouriteContactView());
                    },
                    child: ListTile(
                      leading: Icon(Icons.contact_page,color: Colors.blue[900],),
                      title: KText(text: "Favourite Contact",),
                    ),
                  ),
                  Dividerwidget(),

                  GestureDetector(
                    onTap: (){
                    Get.to(RechargeRequestPage());
                    },
                    child: ListTile(
                      leading: Icon(Icons.request_page,color: Colors.blue[900],),
                      title: KText(text: "Recharge Request",),
                    ),
                  ),
                ],
              ),
            ),
            Apputils.sizeH10,

            Padding(
              padding: const EdgeInsets.all(10),
              child: KText(text: "Settings",fontSize: 15,fontWeight: FontWeight.bold,),
            ),
            Apputils.sizeH10,

            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                   Get.to(ChangePasswordView());
                    },
                    child: ListTile(
                      leading: Icon(Icons.password,color: Colors.blue[900],),
                      title: KText(text: "Change Password",),
                    ),
                  ),
                  Dividerwidget(),
                  GestureDetector(
                    onTap: (){
                    Get.to(AboutUs());
                    },
                    child: ListTile(
                      leading: Icon(Icons.account_balance_outlined,color: Colors.blue[900],),
                      title: KText(text: "About us",),
                    ),
                  ),
                ],
              ),
            ),
            Apputils.sizeH10,
            Padding(
              padding: const EdgeInsets.all(10),
              child: KText(text: "Others",fontSize: 15,fontWeight: FontWeight.bold,),
            ),
            Apputils.sizeH10,
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                    Get.to(HelpPage());
                    },
                    child: ListTile(
                      leading: Icon(Icons.help,color: Colors.blue[900],),
                      title: KText(text: "Help and Support",),
                    ),
                  ),
                  Dividerwidget(),
                  GestureDetector(

                    onTap: (){
                    Get.to(PrivacyPolicyPage());
                    },
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip,color: Colors.blue[900],),
                      title: KText(text: "Privacy Policy",),
                    ),
                  ),
                  Dividerwidget(),
                  ListTile(
                    onTap: (){

                     // logout.logout();
                    },
                    leading: Icon(Icons.logout,color: Colors.blue[900],),
                    title: KText(text: "Sign Out",),
                  ),
                  Dividerwidget(),
                  ListTile(
                    leading: Icon(Icons.delete,color: Colors.blue[900],),
                    title: KText(text: "Delete Account",),
                  ),
                  SizedBox(height: 80,)

                ],
              ),
            )


          ],
        ),
      ),
    );
  }

}

class Dividerwidget extends StatelessWidget {
  const  Dividerwidget ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Divider(
      color: Colors.grey,
      height: 1,
      indent: 0,
      endIndent: 0,
    );
  }
}
