import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/login/models/login_reponse_model.dart';
import 'package:iflex/app/modules/login/models/login_request_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class LoginRepository{


 static Future<LoginResponseModel?> userLogin({required LoginRequestModel loginRequestModel})async  {
    try {
      Uri url = Uri.parse(ApiUrls.LOGIN);
      LoginResponseModel loginResponseModel;
      String loginBody = jsonEncode(loginRequestModel.toJson());
      final http.Response response = await http
          .post(url, body: loginBody,
          headers: {'Content-Type': 'application/json'})
          .timeout(const Duration(minutes: 1));
      if (response.statusCode == 200 || response.statusCode == 201) {
        loginResponseModel = LoginResponseModel.fromJson(jsonDecode(response.body));
        return loginResponseModel;
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

}