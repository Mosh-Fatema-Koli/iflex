import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/top_up_offer/controllers/top_up_offer_controller.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class Alloffers extends StatelessWidget {
   Alloffers({Key? key}) : super(key: key);

  final controller = Get.put(TopUpOfferController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:ListView.builder(
              itemCount: controller.topUpOffers.length,
              itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
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
                                    KText(text: controller.topUpOffers[index].title),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          KText(text:controller.topUpOffers[index].description.toString()),
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
                              child: Center(child: KText(text: controller.topUpOffers[index].amount.toString()),
                            ))

                          ],
                        ),
                      ),
                    ),
                  ))


    );
  }
}
