import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:iflex/app/commons/constants/api_urls.dart';

class ProfileRepository {


  Future<bool> updateProfile(Map<String, dynamic> data) async {
    try {
      final token = await GetStorage().read("token");

      final headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };

      final response = await http.patch(
          Uri.parse(ApiUrls.PROFILE), body: data, headers: headers);

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        // Successful update
        return true;
      } else {
        // Handle error
        return false;
      }
    } catch (e) {
      // Handle exception
      return false;
    }
  }


}
