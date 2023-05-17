class LoginResponseModel {
  String? refresh;
  String? access;

  LoginResponseModel({this.refresh, this.access});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'];
    access = json['access'];
  }

}