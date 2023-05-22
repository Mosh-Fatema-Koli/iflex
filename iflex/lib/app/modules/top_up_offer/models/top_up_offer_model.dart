class TopUpOfferModel {
  int? id;
  String? title;
  String? category;
  String? description;
  int? amount;
  Telco? telco;

  TopUpOfferModel(
      {this.id,
        this.title,
        this.category,
        this.description,
        this.amount,
        this.telco});

  TopUpOfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    description = json['description'];
    amount = json['amount'];
    telco = json['telco'] != null ? new Telco.fromJson(json['telco']) : null;
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


}