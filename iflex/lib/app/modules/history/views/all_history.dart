import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AllHistoryPage extends StatelessWidget {
 AllHistoryPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) =>  Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(


          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [



              ],
            ),
          ),
        ),
      ),),


    );
  }
}
