class PastModel
{
  final String? pastID;
  final String? pastTitle;
  final String? pastDateTime;
  final String? pastCategory;
  final double? pastRate;
  final String? pastRateDescription;

  PastModel({
    this.pastID,
    this.pastTitle, 
    this.pastDateTime, 
    this.pastCategory,
    this.pastRate,
    this.pastRateDescription,
    });

  factory PastModel.fromJson(Map<String, dynamic> json)
  {
    String? id;
    if (json['id'] != null)
    {
      id = json['id'].toString();
    }
    
    double? rate;
    if (json['rate'] != null && json['rate'].toString().isNotEmpty)
    {
      rate = double.tryParse(json['rate'].toString());
    }
    return PastModel(
      pastID: id,
      pastTitle: json['title'] as String?,
      pastDateTime: json['dateTime'] as String?,
      pastCategory: json['category'] as String?,
      pastRate: rate,
      pastRateDescription: json['rateDescription'] as String?,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': pastID,
      'title': pastTitle,
      'dateTime': pastDateTime,
      'category': pastCategory,
      'rate': pastRate,
      'rateDescription': pastRateDescription,
    };
  }
  
}