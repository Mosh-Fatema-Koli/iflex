import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/history/controllers/history_controller.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class AllHistoryPage extends StatelessWidget {
 AllHistoryPage({Key? key}) : super(key: key);

 final transactionController = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {


        if(transactionController.transactions.isEmpty){
          return const Center(child: CupertinoActivityIndicator());
        }
    else{
          return   ListView.builder(
            itemCount: transactionController.transactions.length,
            itemBuilder: (context, index) =>  Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(

                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(text: transactionController.transactions[index].recipientNumber,fontSize: 12,),
                      KText(text: transactionController.transactions[index].amount,fontSize: 12,),
                      KText(text: transactionController.transactions[index].createdAt,fontSize: 12,),
                     Container(

                         decoration:BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                       child: Center(child: KText(text: transactionController.transactions[index].status,fontSize: 10,)),
                     ))



                    ],
                  ),
                ),
              ),
            ));
        }
      }),





    );
  }
}

