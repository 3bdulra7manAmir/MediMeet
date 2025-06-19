class BillingModel
{
  final String? billID;
  final String? billTitle;
  final String? billDateTime;
  final String? billStatus;

  BillingModel({
    this.billID,
    this.billTitle, 
    this.billDateTime, 
    this.billStatus, 
    });

  factory BillingModel.fromJson(Map<String, dynamic> json)
  {
    return BillingModel(
      billID:  json['id'] as String,
      billTitle: json['title'] as String,
      billDateTime: json['dateTime'] as String,
      billStatus: json['status'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': billID,
      'title': billTitle,
      'dateTime': billDateTime,
      'category': billStatus,
    };
  }
  
}