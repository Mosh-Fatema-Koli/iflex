import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/views/contact_edit_delete.dart';
import 'package:iflex/app/modules/widget/hexcolor.dart';
import 'package:iflex/app/modules/widget/k_Text.dart';
import 'package:iflex/app/routes/app_pages.dart';

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
            Get.toNamed(Routes.FAVOURITE_CONTACT_ADD);
          }, icon:const Icon(Icons.person_add))
        ],
      ),
      body: Obx(() {
        if(controller.favouriteContactDataLoaded.value == false){
          return const Center(child: CircularProgressIndicator());
        }
        // else if(controller.favouriteContactDataLoaded.value == true && controller.favouriteContactList.isEmpty){
        //   return Center(child: Text('No data found'),);
        // }
        else{
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: HexColor("#EFF2F9"),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(

                    padding: const EdgeInsets.all(15),
                    child: KText(text: 'MY FAVOURITE CONTACTS',fontSize: 12,),
                  ),
                ),
                favouriteContact()

              ],
            ),
          );
        }
      }),
    );
  }
  favouriteContact(){
    return ListView.builder(
   shrinkWrap: true,
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.favouriteContactList.length,
      itemBuilder: (context, index) {
     FavouriteContactModel favouriteContact= controller.favouriteContactList[index];
     return  ListTile(

       title: KText(text: favouriteContact.fields?.name),
       subtitle: KText(text: favouriteContact.fields?.number,),

       trailing:IconButton(onPressed: (){
          Get.to(ContactNumberEdit(
              id:controller.favouriteContactList[index].pk!,
            name:controller.favouriteContactList[index].fields!.name.toString(),
            number: controller.favouriteContactList[index].fields!.number.toString(),
            prioty : controller.favouriteContactList[index].fields!.priority.hashCode,
          ));
       },icon:const Icon (Icons.edit),
       ),

     );
      }

    );

  }
}

