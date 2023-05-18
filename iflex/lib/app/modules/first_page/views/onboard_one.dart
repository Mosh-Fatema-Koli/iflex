
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iflex/app/modules/first_page/views/oneboard_two.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:iflex/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';



class OneboardOne extends StatelessWidget {
  const OneboardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height:20,
              ),
          GestureDetector(
            onTap: (){
              Get.toNamed(Routes.LOGIN);
            },
            child: Container(
              child: KText(text: "Skip>>",),
            ),
          ),
              Column(
                children: [

                  Center(
                    child: Container(
                        height: 500,
                        child: Lottie.asset('images/54661-girl-with-phone-message.json',height: 300,width: 300)),
                  ),
                  KText(text: "Recharge Easily",fontSize: 22,fontWeight: FontWeight.bold,),
                  SizedBox(
                    height: 10,
                  ),
                  KText(text: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
                      "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",textAlign: TextAlign.center,)

                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
      backgroundColor:  Colors.blue[900],
        onPressed: (){
          Get.to(Onboardtwo());
        },
        child: Icon(Icons.arrow_forward_outlined),
      ),


    );
  }
}
