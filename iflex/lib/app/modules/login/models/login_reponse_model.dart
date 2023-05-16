class LoginResponseModel {
  bool? success;
  Data? data;
  String? message;

  LoginResponseModel({this.success, this.data, this.message});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

}

class Data {
  String? token;
  String? name;
  int? id;

  Data({this.token, this.name, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    name = json['Name'];
    id = json['Id'];
  }

}