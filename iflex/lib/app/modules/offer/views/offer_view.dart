import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:lottie/lottie.dart';

import '../controllers/offer_controller.dart';

class OfferView extends GetView<OfferController> {
  const OfferView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: HexColor("#EFF2F9"),
      body: Column(

        children: [
          Container(
            height: 35,
            color: Colors.blue,
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
                height: 300,
                child: Lottie.asset('images/90367-gift.json',height: 300,width: 300)),
          ),
          KText(text: "No Offer Found!",fontSize: 20,fontWeight: FontWeight.bold,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: KText(text: "There are currently no offer for you.Please try for another.",fontSize: 12,color: Colors.grey,textAlign: TextAlign.center,),
          )

        ],
      ),
    );
  }
}
