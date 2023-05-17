
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/home/views/all_offer.dart';
import 'package:iflex/app/modules/home/views/invoice.dart';
import 'package:iflex/app/modules/home/views/phone_no.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/custom_TextField.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class MobileRecharge extends StatelessWidget {
  const MobileRecharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: 'MOBILE RECHARGE',color: Colors.white,),
        actions: [
       MaterialButton(onPressed: (){  Get.to(PhoneNoSet()); },child: KText(text: "QUICKIE",color: Colors.orangeAccent,),)
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(PhoneNoSet());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue,width: 1)              ),
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              KText(text: "Enter Moble Number",color: Colors.grey[700],fontSize: 14,),

                              Row(
                                children: [

                                  Icon(Icons.contact_phone,color: Colors.grey[700],),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Apputils.sizeH10,
                    SignUpTextField(
                      hintText: 'Enter Amount',
                      keybord: TextInputType.number,
                    )
                  ],
                ),
              ),

              Container(
                 height: 50,
                color: HexColor("#EFF2F9"),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_fire_department_rounded,color: Colors.amber,),
                          Apputils.sizeW5,
                          KText(text: " MOST POPULAR OFFERS")
                        ],
                      ),
                      GestureDetector(
                          onTap: (){
                            Get.to(Alloffers());
                          },
                          child: KText(text: "View All"))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 1)              ),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                        ),
                       Apputils.sizeW10,
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           KText(text: "350 Min + 12 GB, 30 Days"),
                           Container(
                             child: Row(
                               children: [
                                 Icon(Icons.calendar_month),
                                 KText(text: ' 30 Days',),
                               ],
                             ),
                           )
                         ],
                       )
                      ],
                    ),
                        Container(
                          height: 20,
                          width: 60,
                          color: Colors.blue,
                          child: Center(child: KText(text: '490')),
                        )

                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
          MaterialButton(onPressed: (){
            Get.to(InvoicePage());
          },
            minWidth: MediaQuery.of(context).size.width,
            color: Colors.blue,
            height: 50,
            child: KText(text: 'PROCESS',color: Colors.white,),)
        ],
      ),
    
    );
  }
}