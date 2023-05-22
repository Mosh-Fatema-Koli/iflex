class OfferModel {
  int? id;
  String? title;
  String? category;
  String? description;
  int? amount;
  Telco? telco;

  OfferModel(
      {this.id,
        this.title,
        this.category,
        this.description,
        this.amount,
        this.telco});

  OfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    description = json['description'];
    amount = json['amount'];
    telco = json['telco'] != null ? new Telco.fromJson(json['telco']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    data['description'] = this.description;
    data['amount'] = this.amount;
    if (this.telco != null) {
      data['telco'] = this.telco!.toJson();
    }
    return data;
  }
}

class Telco {
  int? id;
  String? name;
  String? description;
  String? defaultPrefix;

  Telco({this.id, this.name, this.description, this.defaultPrefix});

  Telco.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    defaultPrefix = json['default_prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['default_prefix'] = this.defaultPrefix;
    return data;
  }
}