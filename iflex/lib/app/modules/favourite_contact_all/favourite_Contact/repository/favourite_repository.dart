import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_model.dart';



class FavouriteRepository{


      Future<List<FavouriteContactModel>> favouriteContactFetch()async {

      try {

        final token = await GetStorage().read("token");

        List<FavouriteContactModel> favouriteContactList = <FavouriteContactModel>[];

        Uri url = Uri.parse(ApiUrls.FAVOURITE_CONTACT);

        final http.Response response = await http.get(url,  headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',

        });
        if (response.statusCode == 200 || response.statusCode == 201) {
          var jsonMap = jsonDecode(response.body);
          print(jsonMap);
          for (var store in jsonMap) {
            favouriteContactList.add(FavouriteContactModel.fromJson(store));
          }
          return favouriteContactList;
        } else {


          return [];
        }
      } catch (e) {
        return [];
      }




      }



}




