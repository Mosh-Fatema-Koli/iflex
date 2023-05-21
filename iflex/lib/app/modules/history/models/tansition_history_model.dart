class TransactionModel {
  int? id;
  String? createdAt;
  String? amount;
  String? recipientNumber;
  String? status;
  String? response;
  int? user;

  TransactionModel(
      {this.id,
        this.createdAt,
        this.amount,
        this.recipientNumber,
        this.status,
        this.response,
        this.user});

  TransactionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    amount = json['amount'];
    recipientNumber = json['recipient_number'];
    status = json['status'];
    response = json['response'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['amount'] = this.amount;
    data['recipient_number'] = this.recipientNumber;
    data['status'] = this.status;
    data['response'] = this.response;
    data['user'] = this.user;
    return data;
  }
}