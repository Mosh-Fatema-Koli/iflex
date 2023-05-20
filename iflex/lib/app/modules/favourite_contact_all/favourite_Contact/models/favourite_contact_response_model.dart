class ContactAddResponseModel {
  String? number;
  String? note;

  ContactAddResponseModel({this.number, this.note});

  ContactAddResponseModel.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['note'] = this.note;
    return data;
  }
}

class ContactUpdateResponseModel {
  String? number;
  String? note;

  ContactUpdateResponseModel({this.number, this.note});

  ContactUpdateResponseModel.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['note'] = this.note;
    return data;
  }
}

class ContactDeleteResponseModel {
  String? note;

  ContactDeleteResponseModel({this.note});

  ContactDeleteResponseModel.fromJson(Map<String, dynamic> json) {
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['note'] = this.note;
    return data;
  }
}