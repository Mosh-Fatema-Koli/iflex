class LoginResponseModel {
  String? refresh;
  String? access;

  LoginResponseModel({this.refresh, this.access});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'];
    access = json['access'];
  }

}



class LoginErrorModel {
  String? detail;

  LoginErrorModel({this.detail});

  LoginErrorModel.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
  }

}