import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/models/favourite_contact_model.dart';
import 'package:iflex/app/modules/favourite_contact_all/favourite_Contact/repository/favourite_repository.dart';

class FavouriteContactController extends GetxController {

  final refCotroller = Get.put(RefreshTokenController());

  RxList<FavouriteContactModel> favouriteContactList = <FavouriteContactModel>[].obs;
  RxBool favouriteContactDataLoaded = false.obs;
  @override
  void onInit() {
    ///have to call refreshToken Api here
    fetchFavouriteContactData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }


  void fetchFavouriteContactData(){
    refCotroller.refreshToken();
    FavouriteRepository().favouriteContactFetch().then((List<FavouriteContactModel> responseData) {
      favouriteContactList.value = responseData;
      favouriteContactDataLoaded.value = true;
    });
  }
}
