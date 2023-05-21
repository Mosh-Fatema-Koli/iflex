import 'package:get/get.dart';
import 'package:iflex/app/commons/controllers/ref_token.dart';
import 'package:iflex/app/modules/history/models/tansition_history_model.dart';
import 'package:iflex/app/modules/history/repository/tansition_repository.dart';

class HistoryController extends GetxController {
  //TODO: Implement HistoryController
  final refCotroller = Get.put(RefreshTokenController());

  @override
  void onInit() {
refCotroller.refreshToken();
    fetchTransactions();
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

  final TransactionRepository _repository = TransactionRepository();
  final transactions = <TransactionModel>[].obs;

  Future<void> fetchTransactions() async {

    refCotroller.refreshToken();

    try {
      final fetchedTransactions = await _repository.fetchTransactions();
      transactions.assignAll(fetchedTransactions);
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }
}
