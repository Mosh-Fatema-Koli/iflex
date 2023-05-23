import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/profile/models/profile_model.dart';
import 'package:iflex/app/modules/profile_edit/repository/profile_edit_repository.dart';

class ProfileEditController extends GetxController {
  //TODO: Implement ProfileEditController
  final refCotroller = Get.put(RefreshTokenController());

  @override
  void onInit() {
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
  final ProfileRepository _repository = ProfileRepository();

  Future<bool> updateProfile(ProfileModel profile) async {
    final data = profile.toJson();
    return await _repository.updateProfile(data);
  }

}
