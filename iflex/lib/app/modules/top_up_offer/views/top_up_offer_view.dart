import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/top_up_offer/views/all_top_up_offer.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/top_up_offer_controller.dart';

class TopUpOfferView extends GetView<TopUpOfferController> {
const TopUpOfferView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 3,
      child: Scaffold(
        appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.blue,
          bottom: TabBar(
              labelColor: Colors.white,

              unselectedLabelColor: Colors.grey[900],
              labelStyle: TextStyle(fontSize: 14),
              tabs: [
                Tab(text:'Internet' ),
                Tab(text:'Voice' ),
                Tab(text:'Combo' ),
                Tab(text:'All' ),

              ]
          ),
          title: KText(
            text: "Select Offer",fontSize: 14,color: Colors.white,
          ),

        ),
        body: TabBarView(
          children: [


            AllOffers(),
            AllOffers(),
            AllOffers(),
            AllOffers(),

          ],
        ),
      ),
    );
  }
}
