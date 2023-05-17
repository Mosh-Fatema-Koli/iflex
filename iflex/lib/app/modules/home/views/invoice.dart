
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: "Invoice",color: Colors.white,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         // Get.to(PaymentPage());
        },
        child:Icon(Icons.arrow_forward),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.,
    );

  }
}
