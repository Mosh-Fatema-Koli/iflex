
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/operator_controller.dart';
import 'package:iflex/app/modules/home/views/mobile_recharge.dart';
import 'package:iflex/app/modules/more/views/more_view.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class OperatorSelect extends StatelessWidget {
   OperatorSelect({Key? key}) : super(key: key);

 final operatorC = Get.put(OperatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: 'SELECT AN OPERATOR',color: Colors.white,fontSize: 12),
      ),
      body: ListView.builder(
        itemCount:operatorC.size.length,
        itemBuilder: (context, index) => Obx(() => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: operatorC.selectedIndex.value == index ? Colors.blue: Colors.grey,width: 1)              ),
            height: 70,
            child: InkWell(
              onTap: (){
                operatorC.selectedIndex.value = index;
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [
                        ListTile(
                          onTap: (){
                            Get.to(MobileRecharge());
                          },
                          title: Text('Prepaid'),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                        Dividerwidget(),
                        ListTile(
                          onTap: (){
                            Get.to(MobileRecharge());
                          },
                          title: Text('Postpaid'),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),

                      ],
                    );
                  },
                );

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
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
                        KText(text: '${operatorC.size[index]['title']}')
                      ],
                    ),
                    Icon(Icons.circle, color: operatorC.selectedIndex.value == index ? Colors.blue : Colors.grey,)

                  ],
                ),
              ),
            ),
          ),
        ),)),



    );
  }
}
