class BillingModel
{
  final String? id;
  final String? billID;
  final String? billTitle;
  final String? billPrice;
  final String? billStatus;

  BillingModel({
    this.id,
    this.billID,
    this.billTitle, 
    this.billPrice, 
    this.billStatus, 
    });

  factory BillingModel.fromJson(Map<String, dynamic> json)
  {
    return BillingModel(
      id:  json['id'] as String,
      billID:  json['billID'] as String,
      billTitle: json['title'] as String,
      billPrice: json['price'] as String,
      billStatus: json['status'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': id,
      'billID': billID,
      'title': billTitle,
      'price': billPrice,
      'status': billStatus,
    };
  }
  
}