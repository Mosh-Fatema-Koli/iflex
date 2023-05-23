class ContactUpdateModel {
  int? id;
  String? number;
  String? name;
  String? priority;

  ContactUpdateModel({this.id, this.number, this.name, this.priority});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['number'] = number;
    data['name'] = name;
    data['priority'] = priority;
    return data;
  }
}
