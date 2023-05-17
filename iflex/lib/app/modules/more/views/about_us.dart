
import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/images.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          //3
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      KText(text: "To open the avenue of experiencing a limitless world online Iflex has presented the people of Bangladesh with the opportunity to avail the cashless service of airtime recharge and online utility bills payment. Easy is the first online channel of prepaid and postpaid airtime recharging service offered to the mobile and internet users of Bangladesh. Currently it serves the subscribers of all Telecom Operators with online mobile airtime recharge along with the service of utility bills payment of BTCL, DESCO, DPDC, and WASA.",fontSize: 12,),
                      Apputils.sizeH20,
                      KText(text: "Features",fontSize: 20,color: Colors.blue,),

                    Apputils.sizeH10,

                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "No EXTRA charge applicable"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Instant top-up to desired mobile numbers"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Instant confirmation via Email"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Electronic invoice for each transaction"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Access from anywhere, anytime"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "User friendly, secured & more convenient"),
                      ],
                    ),

                Apputils.sizeH20,
                KText(text: "Pay With",fontSize: 20,color: Colors.blue,),

                    Apputils.sizeH10,

                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "BKash"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Nogod"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Roket"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "MasterCard"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "VISA"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "BRAC Bank"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "DBBL Nexus Card"),

                      ],
                    ),

                    Apputils.sizeH20,
                    KText(text: "Our Partners",fontSize: 20,color: Colors.blue,),

                    Apputils.sizeH10,

                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "GrameenPhone"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Banglalink"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Robi"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Airtal"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right_rounded,color: Colors.blue,),
                        KText(text: "Teletalk"),
                      ],
                    ),

                  ],
                ),
                    )

            ),
          ),
        ],
      ),
    );

  }
}
