
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/home/views/payment.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class SummaryPage extends StatelessWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Card(
          color: Colors.grey[300],
          child: Container(
            height: 180,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  KText(text: "Payment Summary",fontSize: 20,fontWeight: FontWeight.bold,),
                  SizedBox(
                    height:20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(text: "Phone No ",),
                          SizedBox(
                            height: 10,
                          ),
                          KText(text: "01302607702 ",fontSize: 12,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(text: "Operator ",),
                          SizedBox(
                            height: 10,
                          ),
                          KText(text: "GeameenPhone",fontSize: 12,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(text: "Type ",),
                          SizedBox(
                            height: 10,
                          ),
                          KText(text: "Prepaid ",fontSize: 12,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(text: "Amount ",),
                          SizedBox(
                            height: 10,
                          ),
                          KText(text: "50 /=",fontSize: 12,),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
     Get.to(PaymentPage());
        },
        child:Icon(Icons.arrow_forward),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.,
    );

  }
}
