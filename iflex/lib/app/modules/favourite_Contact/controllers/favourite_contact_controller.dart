import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/favourite_Contact/models/favourite_contact_model.dart';
import 'package:iflex/app/modules/favourite_Contact/repository/favourite_repository.dart';

class FavouriteContactController extends GetxController {

  final refCotroller = Get.put(RefreshTokenController());

  RxList<FavouriteContactModel> favouriteContactList = <FavouriteContactModel>[].obs;
  RxBool favouriteContactDataLoaded = false.obs;
  @override
  void onInit() {
    ///have to call refreshToken Api here
    refCotroller.refreshToken();
    fetchFavouriteContactData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchFavouriteContactData(){
    FavouriteRepository().favouriteContactFetch().then((List<FavouriteContactModel> responseData) {
      favouriteContactList.value = responseData;
      favouriteContactDataLoaded.value = true;
    });
  }
}
