

class RegistrationResponseModel {
  int? id;
  String? username;
  String? email;

  RegistrationResponseModel({this.id, this.username, this.email});

  RegistrationResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['username'] = username;
    data['email'] = email;

    return data;
  }
}




class RegistrationErrorModel {
  List<String>? username;
  List<String>? email;

  RegistrationErrorModel({this.username, this.email});

  RegistrationErrorModel.fromJson(Map<String, dynamic> json) {
    username = json['username'].cast<String>();
    email = json['email'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}