import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/app_utils.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';


class Alloffers extends StatelessWidget {
  const Alloffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: "Select Offer",fontSize: 16,color: Colors.white,),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) =>   Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey,width: 1)              ),
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
                        KText(text: "350 Min + 12 GB, 30 Days"),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month),
                              KText(text: ' 30 Days',),
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
                  child: Center(child: KText(text: '490')),
                )

              ],
            ),
          ),
        ),
      )) ,
    );
  }
}
