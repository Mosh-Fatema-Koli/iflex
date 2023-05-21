class ContactNumberModel {
  final String number;
  final String name;
  final dynamic priority;

  ContactNumberModel({required this.number, required this.name, required this.priority});

  factory ContactNumberModel.fromJson(Map<String, dynamic> json) {
    return ContactNumberModel(

      number: json['number'],
      name: json['name'],
      priority: json['priority'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'priority': priority,
    };
  }
}