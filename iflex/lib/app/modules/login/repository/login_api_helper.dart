import 'package:iflex/app/modules/login/models/login_reponse_model.dart';
import 'package:iflex/app/modules/login/models/login_request_model.dart';

abstract class LoginApiHelper{
  Future<LoginResponseModel?> userLogin({required LoginRequestModel loginRequestModel});
}