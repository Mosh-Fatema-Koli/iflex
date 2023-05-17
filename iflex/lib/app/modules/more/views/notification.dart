
import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:lottie/lottie.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: 'Notification',color: Colors.white,fontSize: 16,),
      ),
      body: Column(

        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
                height: 300,
                child: Lottie.asset('images/19114-notification-bell.json',height: 200,width: 200)),
          ),
          KText(text: "No notification here !",fontSize: 20,fontWeight: FontWeight.bold,),


        ],
      ),
    );
  }
}
