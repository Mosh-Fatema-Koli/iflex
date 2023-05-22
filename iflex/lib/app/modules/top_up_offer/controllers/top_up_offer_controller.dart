import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/top_up_offer/models/top_up_offer_model.dart';
import 'package:iflex/app/modules/top_up_offer/repository/top_up_offer_repository.dart';

class TopUpOfferController extends GetxController {
  //TODO: Implement TopUpOfferController

  final refCotroller = Get.put(RefreshTokenController());

  final topUpOfferRepository = TopUpOfferRepository().obs;
  final topUpOffers = <TopUpOfferModel>[].obs;
  final isLoading = true.obs;

  @override
  void onInit() {
    fetchTopUpData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }


  Future<void> fetchTopUpData() async {
    refCotroller.refreshToken();
    try {
      isLoading.value = true;
      final offers = await topUpOfferRepository.value.fetchTopUpOffers();
      topUpOffers.value = offers;
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }

  }




