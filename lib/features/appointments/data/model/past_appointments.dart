class PastModel
{
  final String? pastID;
  final String? pastTitle;
  final String? pastDateTime;
  final String? pastCategory;
  final double? pastRate;

  PastModel({
    this.pastID,
    this.pastTitle, 
    this.pastDateTime, 
    this.pastCategory,
    this.pastRate,
    });

  factory PastModel.fromJson(Map<String, dynamic> json)
  {
    return PastModel(
      pastID:  json['id'] as String,
      pastTitle: json['title'] as String,
      pastDateTime: json['dateTime'] as String,
      pastCategory: json['category'] as String,
      pastRate: json['rate'] as double,
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
    };
  }
  
}