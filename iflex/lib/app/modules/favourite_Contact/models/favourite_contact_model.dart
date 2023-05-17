class FovouriteNumberModel {
  String? model;
  int? pk;
  Fields? fields;

  FovouriteNumberModel({this.model, this.pk, this.fields});

  FovouriteNumberModel.fromJson(Map<String, dynamic> json) {
    model = json['model'];
    pk = json['pk'];
    fields =
    json['fields'] != null ? new Fields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model'] = this.model;
    data['pk'] = this.pk;
    if (this.fields != null) {
      data['fields'] = this.fields!.toJson();
    }
    return data;
  }
}

class Fields {
  String? number;
  String? name;
  Null? priority;

  Fields({this.number, this.name, this.priority});

  Fields.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    priority = json['priority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['name'] = this.name;
    data['priority'] = this.priority;
    return data;
  }
}