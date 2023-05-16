import 'package:iflex/app/commons/constants/api_urls.dart';
import 'package:iflex/app/modules/login/models/login_reponse_model.dart';
import 'package:iflex/app/modules/login/models/login_request_model.dart';
import 'package:iflex/app/modules/login/repository/login_api_helper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class LoginApiImpl implements LoginApiHelper{
  @override
  Future<LoginResponseModel?> userLogin({required LoginRequestModel loginRequestModel})async  {
    try {
      Uri url = Uri.parse("${ApiUrls.logInUrl}?email=${loginRequestModel.email}&password=${loginRequestModel.password}");
      LoginResponseModel loginResponseModel;
      final http.Response response = await http
          .post(url, headers: {'Content-Type': 'application/json'})
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