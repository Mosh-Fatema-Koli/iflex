class ProfileModel {
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? password;

  ProfileModel({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      username: json['username'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (username != null) data['username'] = username;
    if (email != null) data['email'] = email;
    if (firstName != null) data['first_name'] = firstName;
    if (lastName != null) data['last_name'] = lastName;
    if (password != null) data['password'] = password;
    return data;
  }
}