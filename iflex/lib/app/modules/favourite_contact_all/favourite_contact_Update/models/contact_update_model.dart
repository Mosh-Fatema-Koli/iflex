class ContactNumberModel {
  int pk;
  String number;
  String name;
  int priority;

  ContactNumberModel({
    required this.pk,
    required this.number,
    required this.name,
    required this.priority,
  });

  factory ContactNumberModel.fromJson(Map<String, dynamic> json) {
    return ContactNumberModel(
      pk: json['pk'],
      number: json['fields']['number'],
      name: json['fields']['name'],
      priority: json['fields']['priority'],
    );
  }

  Map<String, dynamic> toJson() => {
    'model': 'flexi.contactnumbermodel',
    'pk': pk,
    'fields': {
      'number': number,
      'name': name,
      'priority': priority,
    },
  };
}