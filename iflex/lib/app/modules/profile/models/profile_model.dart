class ProfileModel {
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? password;

  ProfileModel(
      {this.username,
        this.email,
        this.firstName,
        this.lastName,
        this.password});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['password'] = this.password;
    return data;
  }
}