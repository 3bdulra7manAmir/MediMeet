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
    return PastModel(
      pastID:  json['id'] as String,
      pastTitle: json['title'] as String,
      pastDateTime: json['dateTime'] as String,
      pastCategory: json['category'] as String,
      pastRate: json['rate'] as double,
      pastRateDescription: json['rateDescription'] as String,
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