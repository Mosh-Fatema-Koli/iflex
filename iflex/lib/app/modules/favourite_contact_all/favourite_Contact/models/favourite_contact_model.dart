class FavouriteContactModel {
  String? model;
  int? pk;
  Fields? fields;

  FavouriteContactModel({this.model, this.pk, this.fields});

  FavouriteContactModel.fromJson(Map<String, dynamic> json) {
    model = json['model'];
    pk = json['pk'];
    fields =
    json['fields'] != null ? Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['model'] = model;
    data['pk'] = pk;
    if (fields != null) {
      data['fields'] = fields!.toJson();
    }
    return data;
  }
}

class Fields {
  String? number;
  String? name;
  dynamic priority;

  Fields({this.number, this.name, this.priority});

  Fields.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    if( json['priority'] != null)
    {
      priority = json['priority'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    data['priority'] = priority;
    return data;
  }
}