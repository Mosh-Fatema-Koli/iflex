import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/favourite_Contact/views/add_favourite.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';

import '../controllers/favourite_contact_controller.dart';

class FavouriteContactView extends GetView<FavouriteContactController> {
  const FavouriteContactView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:KText(text: 'FAVOURITE CONTACTS',color: Colors.white,),
        actions: [
          IconButton(onPressed: (){
            Get.to(AddFavourite());
          }, icon:Icon(Icons.person_add))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: HexColor("#EFF2F9"),
            width: MediaQuery.of(context).size.width,
            child: Padding(

              padding: const EdgeInsets.all(15),
              child: KText(text: 'MY FAVOURITE CONTACTS',fontSize: 12,),
            ),
          ),
        ],
      ),
    );
  }
  favourite(){
    return ListView(


    );

  }
}

