import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/home/views/mobile_recharge.dart';
import 'package:iflex/app/modules/more/views/notification.dart';
import 'package:iflex/app/modules/profile/views/profile_view.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:iflex/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EFF2F9"),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Stack(
              children: [
                Container(
                  height:470,

                ),

                Positioned(
                    top:0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 350,
                      color: Colors.blue,
                    )),
                Positioned(
                    top:50,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                        child: Container(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: (){
                                      Get.toNamed(Routes.PROFILE);
                                    },
                                    child: Image.asset("images/user.png",height: 25,)),
                                KText(text: "i- Flex",fontSize: 16,fontWeight: FontWeight.bold,color:Colors.blue[900] ,),
                                IconButton(onPressed: (){
                              Get.to(NotificationPage());
                                },icon: Icon(Icons.notifications_none_outlined,color: Colors.blue[900],size: 25,))
                              ],
                            ),
                          ),

                        ),
                      ),
                    )),
                Positioned(
                    top: 170,
                    left: 15,
                    child: RichText(
                      text: TextSpan(
                        text: 'Explore i-flex Service ',
                        style: TextStyle(fontSize:20,fontWeight: FontWeight.w500,color: Colors.black ,),
                        children: const <TextSpan>[
                          TextSpan(text: '\n& Make life easy', style: TextStyle(fontSize:35,fontWeight: FontWeight.bold,color: Colors.white)),

                        ],
                      ),
                    )),
                Positioned(
                    top: 270,
                    left: 20,
                    right: 20,

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                       Get.to(MobileRecharge());
                          },
                          child: Card(
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue,width: 2,)),
                            shadowColor: Colors.blue,


                            child: Container(
                              height: 180,
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.phone_android_rounded,size: 30,),

                                  KText(text: "Top Up")
                                ],
                              ),


                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Card(
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.blue,width: 2,)),
                          child: Container(
                            height: 180,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.wallet,size: 30,),

                                KText(text: "Bill Pay")
                              ],
                            ),


                          ),
                        ),
                      ],
                    ))


              ],
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
              color: Colors.orange,
              child: Container(
                height: 80,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KText(text: "Subscription",fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),
                    KText(text: "Offers chosen specially for you",fontSize: 10,color: Colors.white,),
                  ],
                ),


              ),
            ),
            Apputils.sizeH10,
            Card(
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
              color: Colors.blue,
              child: Container(
                height: 80,
                width: 350,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KText(text: "Top Up offers",fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),
                    KText(text: "Offers chosen specially for you",fontSize: 10,color: Colors.white,),
                  ],
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}